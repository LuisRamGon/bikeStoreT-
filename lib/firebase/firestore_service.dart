import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:random_string/random_string.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class FirestoreModelParser<T extends FirestoreModel> {
  final T? model;
  FirestoreModelParser({this.model});
  T fromMap(Map<String, dynamic> map);

  @mustCallSuper
  Map<String, dynamic> toMap() {
    assert(model != null);
    return {
      'id': model!.id,
      'createdAt': model!.createdAt,
      'updatedAt': model!.updatedAt,
    };
  }
}

abstract class FirestoreModel {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  FirestoreModel({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? randomAlphaNumeric(28).trim(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();
}

abstract class FirestoreService<T extends FirestoreModel>
    extends ChangeNotifier {
  FirestoreModelParser<T> parser;
  T? get model => parser.model;
  final String reference;

  T fromMap(Map<String, dynamic> map) => parser.fromMap(map);

  FirestoreService({
    required this.parser, 
    required this.reference,
  });

  void assertIntance() {
    assert(model != null);
    assert(model!.id.isNotEmpty);
    assert(reference.isNotEmpty);
  }

  /// return success or not
  Future<bool> save() async {
    // can only save if it is not a static instance

    try {
      // ensure that the id is set
      assertIntance();
      await FirebaseFirestore.instance
          .collection(reference)
          .doc(model!.id)
          .set(parser.toMap(), SetOptions(merge: true));
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<bool> delete() async {
    try {
      assertIntance();
      await FirebaseFirestore.instance
          .collection(reference)
          .doc(model!.id)
          .delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  // SECTION - STATIC METHODS

  Future<T?> getById(String id) async {
    try {
      var res =
          await FirebaseFirestore.instance.collection(reference).doc(id).get();

      if (res.exists) {
        var data = res.data();
        data!['id'] = res.id;
        return fromMap(data);
      } else {
        return null;
      }
    } catch (e, stacktrace) {
      print(e.toString());
      print(stacktrace.toString());
      return null;
    }
  }

  Future<List<T>> getAll() async {
    try {
      var res = await FirebaseFirestore.instance.collection(reference).get();

      if (res.docs.isNotEmpty) {
        return res.docs.map((e) => fromMap(e.data())).toList();
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  // where
  Future<List<T>> where(
    String field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) async {
    try {
      var res = await FirebaseFirestore.instance
          .collection(reference)
          .where(
            field,
            isEqualTo: isEqualTo,
            isNotEqualTo: isNotEqualTo,
            isLessThan: isLessThan,
            isLessThanOrEqualTo: isLessThanOrEqualTo,
            isGreaterThan: isGreaterThan,
            isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            arrayContains: arrayContains,
            arrayContainsAny: arrayContainsAny,
            whereIn: whereIn,
            whereNotIn: whereNotIn,
            isNull: isNull,
          )
          .get();

      if (res.docs.isNotEmpty) {
        return res.docs.map(
          (e) {
            final data = e.data();
            data['id'] = e.id;
            return fromMap(data);
          },
        ).toList();
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<T>> getAllByPaginated(int page, {int limit = 20}) async {
    QuerySnapshot<Map<String, dynamic>> snapshot;

    if (page == 1) {
      snapshot = await FirebaseFirestore.instance
          .collection(reference)
          .orderBy('createdAt', descending: true)
          .limit(limit)
          .get();
    } else {
      DocumentSnapshot<Map<String, dynamic>> lastDoc = (await FirebaseFirestore
              .instance
              .collection(reference)
              .orderBy('createdAt', descending: true)
              .limit(limit * (page - 1))
              .get())
          .docs
          .last;

      snapshot = await FirebaseFirestore.instance
          .collection(reference)
          .orderBy('createdAt', descending: true)
          .startAfterDocument(lastDoc)
          .limit(limit)
          .get();
    }

    return snapshot.docs.map(
      (e) {
        final data = e.data();
        data['id'] = e.id;
        return fromMap(data);
      },
    ).toList();
  }

  // where paginated

  Future<List<T>> wherePaginated(
    String field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
    int page = 1,
  }) async {
    const int postsPerPage = 20;

    QuerySnapshot<Map<String, dynamic>> snapshot;

    if (page == 1) {
      snapshot = await FirebaseFirestore.instance
          .collection(reference)
          .where(
            field,
            isEqualTo: isEqualTo,
            isNotEqualTo: isNotEqualTo,
            isLessThan: isLessThan,
            isLessThanOrEqualTo: isLessThanOrEqualTo,
            isGreaterThan: isGreaterThan,
            isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            arrayContains: arrayContains,
            arrayContainsAny: arrayContainsAny,
            whereIn: whereIn,
            whereNotIn: whereNotIn,
            isNull: isNull,
          )
          .orderBy('createdAt', descending: true)
          .limit(postsPerPage)
          .get();
    } else {
      DocumentSnapshot<Map<String, dynamic>> lastDoc =
          (await FirebaseFirestore.instance
                  .collection(reference)
                  .where(
                    field,
                    isEqualTo: isEqualTo,
                    isNotEqualTo: isNotEqualTo,
                    isLessThan: isLessThan,
                    isLessThanOrEqualTo: isLessThanOrEqualTo,
                    isGreaterThan: isGreaterThan,
                    isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
                    arrayContains: arrayContains,
                    arrayContainsAny: arrayContainsAny,
                    whereIn: whereIn,
                    whereNotIn: whereNotIn,
                    isNull: isNull,
                  )
                  .orderBy('createdAt', descending: true)
                  .limit(postsPerPage * (page - 1))
                  .get())
              .docs
              .last;

      snapshot = await FirebaseFirestore.instance
          .collection(reference)
          .where(
            field,
            isEqualTo: isEqualTo,
            isNotEqualTo: isNotEqualTo,
            isLessThan: isLessThan,
            isLessThanOrEqualTo: isLessThanOrEqualTo,
            isGreaterThan: isGreaterThan,
            isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            arrayContains: arrayContains,
            arrayContainsAny: arrayContainsAny,
            whereIn: whereIn,
            whereNotIn: whereNotIn,
            isNull: isNull,
          )
          .orderBy('createdAt', descending: true)
          .startAfterDocument(lastDoc)
          .limit(postsPerPage)
          .get();
    }

    return snapshot.docs.map(
      (e) {
        final data = e.data();
        data['id'] = e.id;
        return fromMap(data);
      },
    ).toList();
  }

  Future<String> uploadFile({
    required String reference,
    required String id,
    required File file,
  }) async {
    var url = "";

    if (kIsWeb) {
      final bytes = await file.readAsBytes();

      final Reference storageReference =
          FirebaseStorage.instance.ref().child(reference).child(id);

      final UploadTask uploadTask = storageReference.putData(bytes);
      var dowurl = await (await uploadTask.whenComplete(() => null))
          .ref
          .getDownloadURL();
      url = dowurl.toString();
    } else {
      final Reference storageReference =
          FirebaseStorage.instance.ref().child(reference).child(id);
      final UploadTask uploadTask = storageReference.putFile(file);
      var dowurl = await (await uploadTask.whenComplete(() => null))
          .ref
          .getDownloadURL();
      url = dowurl.toString();
    }

    return url;
  }

  Future<String> uploadRawFile({
    required String reference,
    required String id,
    required Uint8List bytes,
  }) async {
    var url = "";

    if (kIsWeb) {
      final Reference storageReference =
          FirebaseStorage.instance.ref().child(reference).child(id);

      final UploadTask uploadTask = storageReference.putData(bytes);
      var dowurl = await (await uploadTask.whenComplete(() => null))
          .ref
          .getDownloadURL();
      url = dowurl.toString();
    } else {
      final file = File.fromRawPath(bytes);
      final Reference storageReference =
          FirebaseStorage.instance.ref().child(reference).child(id);
      final UploadTask uploadTask = storageReference.putFile(file);
      var dowurl = await (await uploadTask.whenComplete(() => null))
          .ref
          .getDownloadURL();
      url = dowurl.toString();
    }

    return url;
  }
}

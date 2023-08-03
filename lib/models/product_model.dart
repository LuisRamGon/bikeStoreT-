import 'package:bikestoret/firebase/firestore_service.dart';

class ProductModel extends FirestoreModel {
  
  String? name;
  String? description;
  String? imageUrl;
  double? price;
  String? category;
  String? brand;
  double? rating;
  double? numReviews;
  double? countInStock;
  double? discountPrice;

  ProductModel({
    this.name,
    this.description,
    this.imageUrl,
    this.price,
    this.category,
    this.brand,
    this.rating,
    this.numReviews,
    this.countInStock,
    this.discountPrice,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  factory ProductModel.fromMap(Map<String, dynamic> json) {

    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price']?.toDouble(),
      category: json['category'],
      brand: json['brand'],
      rating: json['rating']?.toDouble(),
      numReviews: json['numReviews']?.toDouble(),
      countInStock: json['countInStock']?.toDouble(),
      createdAt: json['createdAt']?.toDate(),
      updatedAt: json['updatedAt']?.toDate(),
      discountPrice: json['discountPrice']?.toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'category': category,
      'brand': brand,
      'rating': rating,
      'numReviews': numReviews,
      'countInStock': countInStock,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'discountPrice': discountPrice,
    };
  }

}

class ProductModelParser extends FirestoreModelParser<ProductModel> {
  
  ProductModelParser({super.model});

  @override
  ProductModel fromMap(Map<String, dynamic> map) {
    return ProductModel.fromMap(map);
  }
  
  @override
  Map<String, dynamic> toMap() {
    return {
      ...super.toMap(),
      ...model!.toMap(),
    };
  }
  
}
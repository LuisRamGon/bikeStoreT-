import 'package:bikestoret/models/product_model.dart';
import 'package:flutter/material.dart';

import '../services/product_service.dart';

class ProductsProvider extends ChangeNotifier {
  
  final service = ProductService();

  var _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  // products
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  // get products
  void getProducts() async {
    products = await service.getAll();
  }
 
}
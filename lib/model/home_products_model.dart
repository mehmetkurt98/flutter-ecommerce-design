import 'package:flutter_eticaret_uyg/model/product.dart';

class HomeProductsModel {
  String categoryTitle;
  List<Product> products;
  HomeProductsModel({
    required this.categoryTitle,
    required this.products,
  });
}

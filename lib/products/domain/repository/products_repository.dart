// ignore_for_file: one_member_abstracts

import 'package:erni_test/core/models/product_dto.dart';

abstract class ProductsRepository {
  Future<List<ProductDto>>? getProducts();
}

import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl();

  @override
  Future<List<ProductDto>>? getProducts() {
    throw UnimplementedError();
  }
}

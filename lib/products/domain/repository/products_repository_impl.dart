import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/core/providers/providers.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:erni_test/data/products/products_service.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl();

  @override
  Future<List<ProductDto>?>? getProducts({required int page}) async {
    try {
      final productsApiService = getIt<ProductsApiService>();
      final res = await productsApiService.getProducts(10, page * 10, 'title,price,thumbnail,stock,discountPercentage');
      print(res);
      if (res.products?.isNotEmpty ?? false) {
        return res.products!;
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }
}

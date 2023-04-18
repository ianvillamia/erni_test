import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/data/products/product_api_service.dart';
import 'package:erni_test/products/domain/models/products_list_api_response.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockProductApiService extends Mock implements ProductsApiService {}

void main() {
  late ProductsApiService productsApiService;

  final product = ProductDto(
    title: 'iPhone 9',
  );

  setUp(() {
    productsApiService = MockProductApiService();
  });

  test('should return ProductsListApiResponse when getProducts is called', () async {
    // arrange
    final limit = 10;
    final skip = 0;
    final select = 'title,price,thumbnail,stock,discountPercentage';

    when(() => productsApiService.getProducts(limit, skip, select)).thenAnswer((invocation) => Future.value(ProductsListApiResponse()));
    // act
    final result = await productsApiService.getProducts(limit, skip, select);

    // assert
    expect(result, isA<ProductsListApiResponse>());
  });

  test('should return productDto when getProduct is called', () async {
    // arrange
    when(() => productsApiService.getProduct(1)).thenAnswer((invocation) => Future.value(product));
    // act
    final result = await productsApiService.getProduct(1);

    // assert
    expect(result, isA<ProductDto>());
  });
}

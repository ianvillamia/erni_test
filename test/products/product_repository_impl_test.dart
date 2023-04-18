import 'package:erni_test/products/domain/models/products_list_api_response.dart';
import 'package:erni_test/products/domain/repository/products_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/core/providers/providers.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:erni_test/data/products/product_api_service.dart';
import 'package:mocktail/mocktail.dart';

// Define a mock implementation of the ProductsApiService
class MockProductsApiService extends Mock implements ProductsApiService {}

void main() {
  // Set up the test by creating a mock implementation of the ProductsApiService
  late ProductsApiService mockApiService;
  late ProductsRepository repository;
  final products = [
    ProductDto(id: 1),
    ProductDto(id: 2),
    ProductDto(id: 3),
    ProductDto(id: 4),
    ProductDto(id: 5),
    ProductDto(id: 6),
    ProductDto(id: 7),
    ProductDto(id: 8),
    ProductDto(id: 9),
    ProductDto(id: 10),
  ];

  final response = ProductsListApiResponse(
    products: products,
    total: 100,
    limit: 10,
    skip: 0,
  );
  final product = ProductDto(
    title: 'iPhone 9',
  );

  setUp(() {
    mockApiService = MockProductsApiService();
    repository = ProductsRepositoryImpl();
    getIt.registerSingleton<ProductsApiService>(mockApiService);
  });

  tearDown(() {
    getIt.unregister<ProductsApiService>();
  });
  test('returns a list of products when the API call is successful', () async {
    int page = 0;
    // Set up the mock to return a successful response
    when(() => mockApiService.getProducts(10, page * 10, 'title,price,thumbnail,stock,discountPercentage'))
        .thenAnswer((_) async => Future.value(response));

    // Call the repository method under test
    final result = await repository.getProducts(page: page);

    // Verify that the mock API service was called with the correct parameters
    verify(() => mockApiService.getProducts(10, page * 10, 'title,price,thumbnail,stock,discountPercentage'));

    // Verify that the repository returns the expected result
    expect(result, response.products);
  });

  test('returns a product when the API call is successful', () async {
    // Set up the mock to return a successful response
    when(() => mockApiService.getProduct(1)).thenAnswer((_) async => Future.value(product));

    // Call the repository method under test
    final result = await repository.getProduct(id: 1);

    // Verify that the mock API service was called with the correct parameters
    verify(() => mockApiService.getProduct(1));

    // Verify that the repository returns the expected result
    expect(result, product);
  });
}

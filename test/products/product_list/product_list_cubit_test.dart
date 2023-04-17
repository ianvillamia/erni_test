import 'package:bloc_test/bloc_test.dart';
import 'package:erni_test/products/view/products_list/cubit/product_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:get_it/get_it.dart';

import 'package:mocktail/mocktail.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  late MockProductsRepository mockProductsRepository;
  final getIt = GetIt.instance;
  final page0 = [
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
  final page1 = [
    ProductDto(id: 11),
    ProductDto(id: 12),
    ProductDto(id: 13),
    ProductDto(id: 14),
    ProductDto(id: 15),
    ProductDto(id: 16),
    ProductDto(id: 17),
    ProductDto(id: 18),
    ProductDto(id: 19),
    ProductDto(id: 20),
  ];

  final combined = [...page0, ...page1];
  setUp(() {
    // ignore: cascade_invocations

    final bool isRegistered = getIt.isRegistered<ProductsRepository>();
    if (!isRegistered) {
      getIt.registerLazySingleton<ProductsRepository>(() => mockProductsRepository);
    }

    mockProductsRepository = MockProductsRepository();
  });
  tearDown(() {
    getIt.unregister<ProductsRepository>();
  });

  blocTest<ProductListCubit, ProductListState>(
    'emits ProductListState.finished with products when page is 0',
    build: () {
      when(() => mockProductsRepository.getProducts(page: 0)).thenAnswer((_) async {
        return [...page0];
      });
      return ProductListCubit();
    },
    seed: () => ProductListState.loading(),
    act: (cubit) {
      cubit.fetchProducts();
    },
    expect: () => [
      ProductListState.finished(page: 0, products: [...page0])
    ],
  );

  blocTest<ProductListCubit, ProductListState>(
    'emits ProductListState.finished() ',
    build: () {
      when(() => mockProductsRepository.getProducts(page: 1)).thenAnswer((_) async {
        return combined;
      });
      return ProductListCubit();
    },
    seed: () => ProductListState.finished(page: 0, products: [...page0]),
    act: (cubit) {
      cubit.fetchProducts();
    },
    expect: () => [ProductListState.finished(page: 1, products: combined)],
  );
}

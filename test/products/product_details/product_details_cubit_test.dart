import 'package:bloc_test/bloc_test.dart';
import 'package:erni_test/products/view/product_details/cubit/product_details_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:get_it/get_it.dart';

import 'package:mocktail/mocktail.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  late MockProductsRepository mockProductsRepository;
  final getIt = GetIt.instance;
  final ProductDto product = ProductDto(title: 'Iphone 9');

  setUp(() {
    final bool isRegistered = getIt.isRegistered<ProductsRepository>();
    if (!isRegistered) {
      getIt.registerLazySingleton<ProductsRepository>(() => mockProductsRepository);
    }

    mockProductsRepository = MockProductsRepository();
  });
  tearDown(() {
    getIt.unregister<ProductsRepository>();
  });

  blocTest<ProductDetailsCubit, ProductDetailsState>(
    'emits ProductDetailsState.success after initializing',
    build: () {
      when(() => mockProductsRepository.getProduct(id: 1)).thenAnswer((_) async {
        return product;
      });
      return ProductDetailsCubit(1);
    },
    seed: () => ProductDetailsState.initial(),
    expect: () => [ProductDetailsState.sucecss(product)],
  );
}

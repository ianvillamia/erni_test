import 'package:dio/dio.dart';
import 'package:erni_test/data/products/products_service.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:erni_test/products/domain/repository/products_repository_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupProviders() {
  final _dio = Dio();
  getIt
    ..registerSingleton<ProductsApiService>(
      ProductsApiService(_dio),
    )
    ..registerLazySingleton<ProductsRepository>(ProductsRepositoryImpl.new);
}

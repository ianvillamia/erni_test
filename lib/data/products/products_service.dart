import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'products_service.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class ProductsApiService {
  factory ProductsApiService(
    Dio dio, {
    String baseUrl,
  }) = _ProductsApiService;

  /// gets all products
  /// limit - #of items to be returned
  /// skip - pagination - ex. page 2==20
  /// select - fields to be returned (title,price,thumbnail,stock,discountPercentage)
  @GET('products')
  Future<dynamic> getProducts(
    @Query("limit") int limit,
    @Query("skip") int skip,
    @Query("select") String select,
  );
}

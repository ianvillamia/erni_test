import 'package:erni_test/core/models/product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_list_api_response.g.dart';

@JsonSerializable()
class ProductsListApiResponse {
  const ProductsListApiResponse({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory ProductsListApiResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsListApiResponseFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ProductsListApiResponseToJson(this);

  @JsonKey(name: 'products')
  final List<ProductDto>? products;

  @JsonKey(name: 'total')
  final int? total;

  @JsonKey(name: 'skip')
  final int? skip;

  @JsonKey(name: 'limit')
  final int? limit;
}

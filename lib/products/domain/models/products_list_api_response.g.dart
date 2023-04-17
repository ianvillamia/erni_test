// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_list_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsListApiResponse _$ProductsListApiResponseFromJson(
        Map<String, dynamic> json) =>
    ProductsListApiResponse(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ProductsListApiResponseToJson(
        ProductsListApiResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

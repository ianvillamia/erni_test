// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      thumbnail: json['thumbnail'] as String?,
      stock: json['stock'] as int?,
      discountPercentage: json['discountPercentage'] as int?,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'thumbnail': instance.thumbnail,
      'stock': instance.stock,
      'discountPercentage': instance.discountPercentage,
    };

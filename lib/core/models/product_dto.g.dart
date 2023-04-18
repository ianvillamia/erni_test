// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      thumbnail: json['thumbnail'] as String?,
      stock: json['stock'] as int?,
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };

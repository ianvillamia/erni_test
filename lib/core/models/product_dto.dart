import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto extends Equatable {
  const ProductDto({
    this.id,
    this.title,
    this.price,
    this.thumbnail,
    this.stock,
    this.discountPercentage,
    this.description,
    this.rating,
    this.brand,
    this.category,
    this.images,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'price')
  final double? price;

  @JsonKey(name: 'discountPercentage')
  final double? discountPercentage;

  @JsonKey(name: 'rating')
  final double? rating;

  @JsonKey(name: 'stock')
  final int? stock;

  @JsonKey(name: 'brand')
  final String? brand;

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @JsonKey(name: 'images')
  final List<String>? images;

  @override
  List<Object?> get props => <Object?>[id, title, price, thumbnail, stock, discountPercentage];
}

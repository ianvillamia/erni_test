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
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'price')
  final int? price;

  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @JsonKey(name: 'stock')
  final int? stock;

  @JsonKey(name: 'discountPercentage')
  final int? discountPercentage;

  @override
  List<Object?> get props => <Object?>[id, title, price, thumbnail, stock, discountPercentage];
}

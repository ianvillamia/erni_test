part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = ProductDetailsStateInitial;
  const factory ProductDetailsState.loading() = ProductDetailsStateLoading;
  const factory ProductDetailsState.error(String message) = ProductDetailsStateError;
  const factory ProductDetailsState.sucecss(ProductDto? product) = ProductDetailsStateSuccess;
}

part of 'product_list_cubit.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.loading() = ProductListLoading;
  const factory ProductListState.finished({required int page, required List<ProductDto> products}) = ProductListFinished;
  const factory ProductListState.error({required String message}) = ProductListError;
}

import 'package:bloc/bloc.dart';
import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/core/providers/providers.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';
part 'product_details_cubit.freezed.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final int id;
  ProductDetailsCubit(this.id) : super(ProductDetailsState.initial()) {
    initialize();
  }

  void initialize() async {
    try {
      emit(ProductDetailsState.loading());
      final product = await getIt.get<ProductsRepository>().getProduct(id: id);
      emit(ProductDetailsState.sucecss(product));
    } catch (e) {
      emit(ProductDetailsState.error('Something went wrong'));
    }
  }
}

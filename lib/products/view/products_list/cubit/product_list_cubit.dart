import 'package:bloc/bloc.dart';
import 'package:erni_test/core/models/product_dto.dart';
import 'package:erni_test/core/providers/providers.dart';
import 'package:erni_test/products/domain/repository/products_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_state.dart';
part 'product_list_cubit.freezed.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit() : super(ProductListState.loading()) {
    fetchProducts();
  }
  final _limit = 10;
  Future<void> fetchProducts() async {
    try {
      final _currentState = state;
      //Fetch more
      if (_currentState is ProductListFinished) {
        final page = _currentState.page + 1;
        if (page <= _limit) {
          final products = await getIt.get<ProductsRepository>().getProducts(page: page);
          if (products?.isNotEmpty ?? false) {
            emit(ProductListState.finished(page: page, products: [..._currentState.products, ...products!]));
          }
        }
      } else {
        //Fetch Initial Page
        final products = await getIt.get<ProductsRepository>().getProducts(page: 0);
        if (products?.isNotEmpty ?? false) {
          emit(ProductListState.finished(page: 0, products: products!));
        }
      }
    } catch (e) {
      emit(ProductListState.error(message: e.toString()));
    }
  }
}

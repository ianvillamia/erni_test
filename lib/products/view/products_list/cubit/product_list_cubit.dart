import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_state.dart';
part 'product_list_cubit.freezed.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit() : super(ProductListState.initial());
}

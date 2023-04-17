// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int page, List<ProductDto> products) finished,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int page, List<ProductDto> products)? finished,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int page, List<ProductDto> products)? finished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListFinished value) finished,
    required TResult Function(ProductListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoading value)? loading,
    TResult? Function(ProductListFinished value)? finished,
    TResult? Function(ProductListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListFinished value)? finished,
    TResult Function(ProductListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductListLoadingCopyWith<$Res> {
  factory _$$ProductListLoadingCopyWith(_$ProductListLoading value,
          $Res Function(_$ProductListLoading) then) =
      __$$ProductListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductListLoadingCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListLoading>
    implements _$$ProductListLoadingCopyWith<$Res> {
  __$$ProductListLoadingCopyWithImpl(
      _$ProductListLoading _value, $Res Function(_$ProductListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductListLoading implements ProductListLoading {
  const _$ProductListLoading();

  @override
  String toString() {
    return 'ProductListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int page, List<ProductDto> products) finished,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int page, List<ProductDto> products)? finished,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int page, List<ProductDto> products)? finished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListFinished value) finished,
    required TResult Function(ProductListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoading value)? loading,
    TResult? Function(ProductListFinished value)? finished,
    TResult? Function(ProductListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListFinished value)? finished,
    TResult Function(ProductListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductListLoading implements ProductListState {
  const factory ProductListLoading() = _$ProductListLoading;
}

/// @nodoc
abstract class _$$ProductListFinishedCopyWith<$Res> {
  factory _$$ProductListFinishedCopyWith(_$ProductListFinished value,
          $Res Function(_$ProductListFinished) then) =
      __$$ProductListFinishedCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, List<ProductDto> products});
}

/// @nodoc
class __$$ProductListFinishedCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListFinished>
    implements _$$ProductListFinishedCopyWith<$Res> {
  __$$ProductListFinishedCopyWithImpl(
      _$ProductListFinished _value, $Res Function(_$ProductListFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? products = null,
  }) {
    return _then(_$ProductListFinished(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ));
  }
}

/// @nodoc

class _$ProductListFinished implements ProductListFinished {
  const _$ProductListFinished(
      {required this.page, required final List<ProductDto> products})
      : _products = products;

  @override
  final int page;
  final List<ProductDto> _products;
  @override
  List<ProductDto> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductListState.finished(page: $page, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListFinished &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListFinishedCopyWith<_$ProductListFinished> get copyWith =>
      __$$ProductListFinishedCopyWithImpl<_$ProductListFinished>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int page, List<ProductDto> products) finished,
    required TResult Function(String message) error,
  }) {
    return finished(page, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int page, List<ProductDto> products)? finished,
    TResult? Function(String message)? error,
  }) {
    return finished?.call(page, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int page, List<ProductDto> products)? finished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(page, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListFinished value) finished,
    required TResult Function(ProductListError value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoading value)? loading,
    TResult? Function(ProductListFinished value)? finished,
    TResult? Function(ProductListError value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListFinished value)? finished,
    TResult Function(ProductListError value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class ProductListFinished implements ProductListState {
  const factory ProductListFinished(
      {required final int page,
      required final List<ProductDto> products}) = _$ProductListFinished;

  int get page;
  List<ProductDto> get products;
  @JsonKey(ignore: true)
  _$$ProductListFinishedCopyWith<_$ProductListFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductListErrorCopyWith<$Res> {
  factory _$$ProductListErrorCopyWith(
          _$ProductListError value, $Res Function(_$ProductListError) then) =
      __$$ProductListErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProductListErrorCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListError>
    implements _$$ProductListErrorCopyWith<$Res> {
  __$$ProductListErrorCopyWithImpl(
      _$ProductListError _value, $Res Function(_$ProductListError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProductListError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductListError implements ProductListError {
  const _$ProductListError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListErrorCopyWith<_$ProductListError> get copyWith =>
      __$$ProductListErrorCopyWithImpl<_$ProductListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int page, List<ProductDto> products) finished,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int page, List<ProductDto> products)? finished,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int page, List<ProductDto> products)? finished,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListFinished value) finished,
    required TResult Function(ProductListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoading value)? loading,
    TResult? Function(ProductListFinished value)? finished,
    TResult? Function(ProductListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListFinished value)? finished,
    TResult Function(ProductListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductListError implements ProductListState {
  const factory ProductListError({required final String message}) =
      _$ProductListError;

  String get message;
  @JsonKey(ignore: true)
  _$$ProductListErrorCopyWith<_$ProductListError> get copyWith =>
      throw _privateConstructorUsedError;
}

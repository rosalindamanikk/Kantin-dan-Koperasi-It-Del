// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Cart> cartList, double totalPrice) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Cart> cartList, double totalPrice)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Cart> cartList, double totalPrice)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitialState value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartErrorState value) error,
    required TResult Function(CartLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitialState value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartErrorState value)? error,
    TResult? Function(CartLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitialState value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartErrorState value)? error,
    TResult Function(CartLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartInitialStateCopyWith<$Res> {
  factory _$$CartInitialStateCopyWith(
          _$CartInitialState value, $Res Function(_$CartInitialState) then) =
      __$$CartInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartInitialState>
    implements _$$CartInitialStateCopyWith<$Res> {
  __$$CartInitialStateCopyWithImpl(
      _$CartInitialState _value, $Res Function(_$CartInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitialState implements CartInitialState {
  const _$CartInitialState();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Cart> cartList, double totalPrice) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Cart> cartList, double totalPrice)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Cart> cartList, double totalPrice)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitialState value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartErrorState value) error,
    required TResult Function(CartLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitialState value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartErrorState value)? error,
    TResult? Function(CartLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitialState value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartErrorState value)? error,
    TResult Function(CartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CartInitialState implements CartState {
  const factory CartInitialState() = _$CartInitialState;
}

/// @nodoc
abstract class _$$CartLoadingStateCopyWith<$Res> {
  factory _$$CartLoadingStateCopyWith(
          _$CartLoadingState value, $Res Function(_$CartLoadingState) then) =
      __$$CartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingState>
    implements _$$CartLoadingStateCopyWith<$Res> {
  __$$CartLoadingStateCopyWithImpl(
      _$CartLoadingState _value, $Res Function(_$CartLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingState implements CartLoadingState {
  const _$CartLoadingState();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Cart> cartList, double totalPrice) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Cart> cartList, double totalPrice)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Cart> cartList, double totalPrice)? loaded,
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
    required TResult Function(CartInitialState value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartErrorState value) error,
    required TResult Function(CartLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitialState value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartErrorState value)? error,
    TResult? Function(CartLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitialState value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartErrorState value)? error,
    TResult Function(CartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoadingState implements CartState {
  const factory CartLoadingState() = _$CartLoadingState;
}

/// @nodoc
abstract class _$$CartErrorStateCopyWith<$Res> {
  factory _$$CartErrorStateCopyWith(
          _$CartErrorState value, $Res Function(_$CartErrorState) then) =
      __$$CartErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartErrorStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorState>
    implements _$$CartErrorStateCopyWith<$Res> {
  __$$CartErrorStateCopyWithImpl(
      _$CartErrorState _value, $Res Function(_$CartErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartErrorState implements CartErrorState {
  const _$CartErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorStateCopyWith<_$CartErrorState> get copyWith =>
      __$$CartErrorStateCopyWithImpl<_$CartErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Cart> cartList, double totalPrice) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Cart> cartList, double totalPrice)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Cart> cartList, double totalPrice)? loaded,
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
    required TResult Function(CartInitialState value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartErrorState value) error,
    required TResult Function(CartLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitialState value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartErrorState value)? error,
    TResult? Function(CartLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitialState value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartErrorState value)? error,
    TResult Function(CartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CartErrorState implements CartState {
  const factory CartErrorState(final String message) = _$CartErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$CartErrorStateCopyWith<_$CartErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartLoadedStateCopyWith<$Res> {
  factory _$$CartLoadedStateCopyWith(
          _$CartLoadedState value, $Res Function(_$CartLoadedState) then) =
      __$$CartLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Cart> cartList, double totalPrice});
}

/// @nodoc
class __$$CartLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadedState>
    implements _$$CartLoadedStateCopyWith<$Res> {
  __$$CartLoadedStateCopyWithImpl(
      _$CartLoadedState _value, $Res Function(_$CartLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartList = null,
    Object? totalPrice = null,
  }) {
    return _then(_$CartLoadedState(
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CartLoadedState implements CartLoadedState {
  const _$CartLoadedState(
      {required final List<Cart> cartList, required this.totalPrice})
      : _cartList = cartList;

  final List<Cart> _cartList;
  @override
  List<Cart> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartState.loaded(cartList: $cartList, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadedState &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartList), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedStateCopyWith<_$CartLoadedState> get copyWith =>
      __$$CartLoadedStateCopyWithImpl<_$CartLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Cart> cartList, double totalPrice) loaded,
  }) {
    return loaded(cartList, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Cart> cartList, double totalPrice)? loaded,
  }) {
    return loaded?.call(cartList, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Cart> cartList, double totalPrice)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartList, totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitialState value) initial,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartErrorState value) error,
    required TResult Function(CartLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitialState value)? initial,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartErrorState value)? error,
    TResult? Function(CartLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitialState value)? initial,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartErrorState value)? error,
    TResult Function(CartLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CartLoadedState implements CartState {
  const factory CartLoadedState(
      {required final List<Cart> cartList,
      required final double totalPrice}) = _$CartLoadedState;

  List<Cart> get cartList;
  double get totalPrice;
  @JsonKey(ignore: true)
  _$$CartLoadedStateCopyWith<_$CartLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

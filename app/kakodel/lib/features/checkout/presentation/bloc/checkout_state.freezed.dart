// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckoutInitialStateCopyWith<$Res> {
  factory _$$CheckoutInitialStateCopyWith(_$CheckoutInitialState value,
          $Res Function(_$CheckoutInitialState) then) =
      __$$CheckoutInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutInitialStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutInitialState>
    implements _$$CheckoutInitialStateCopyWith<$Res> {
  __$$CheckoutInitialStateCopyWithImpl(_$CheckoutInitialState _value,
      $Res Function(_$CheckoutInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutInitialState implements CheckoutInitialState {
  const _$CheckoutInitialState();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
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
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CheckoutInitialState implements CheckoutState {
  const factory CheckoutInitialState() = _$CheckoutInitialState;
}

/// @nodoc
abstract class _$$CheckoutLoadingStateCopyWith<$Res> {
  factory _$$CheckoutLoadingStateCopyWith(_$CheckoutLoadingState value,
          $Res Function(_$CheckoutLoadingState) then) =
      __$$CheckoutLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutLoadingStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutLoadingState>
    implements _$$CheckoutLoadingStateCopyWith<$Res> {
  __$$CheckoutLoadingStateCopyWithImpl(_$CheckoutLoadingState _value,
      $Res Function(_$CheckoutLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutLoadingState implements CheckoutLoadingState {
  const _$CheckoutLoadingState();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
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
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoadingState implements CheckoutState {
  const factory CheckoutLoadingState() = _$CheckoutLoadingState;
}

/// @nodoc
abstract class _$$CheckoutErrorStateCopyWith<$Res> {
  factory _$$CheckoutErrorStateCopyWith(_$CheckoutErrorState value,
          $Res Function(_$CheckoutErrorState) then) =
      __$$CheckoutErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CheckoutErrorStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutErrorState>
    implements _$$CheckoutErrorStateCopyWith<$Res> {
  __$$CheckoutErrorStateCopyWithImpl(
      _$CheckoutErrorState _value, $Res Function(_$CheckoutErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckoutErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutErrorState implements CheckoutErrorState {
  const _$CheckoutErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutErrorStateCopyWith<_$CheckoutErrorState> get copyWith =>
      __$$CheckoutErrorStateCopyWithImpl<_$CheckoutErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
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
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CheckoutErrorState implements CheckoutState {
  const factory CheckoutErrorState(final String message) = _$CheckoutErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$CheckoutErrorStateCopyWith<_$CheckoutErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutLoadedStateCopyWith<$Res> {
  factory _$$CheckoutLoadedStateCopyWith(_$CheckoutLoadedState value,
          $Res Function(_$CheckoutLoadedState) then) =
      __$$CheckoutLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({double totalPrice, List<Cart> cartList});
}

/// @nodoc
class __$$CheckoutLoadedStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutLoadedState>
    implements _$$CheckoutLoadedStateCopyWith<$Res> {
  __$$CheckoutLoadedStateCopyWithImpl(
      _$CheckoutLoadedState _value, $Res Function(_$CheckoutLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
    Object? cartList = null,
  }) {
    return _then(_$CheckoutLoadedState(
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ));
  }
}

/// @nodoc

class _$CheckoutLoadedState implements CheckoutLoadedState {
  const _$CheckoutLoadedState(
      {required this.totalPrice, required final List<Cart> cartList})
      : _cartList = cartList;

  @override
  final double totalPrice;
  final List<Cart> _cartList;
  @override
  List<Cart> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  String toString() {
    return 'CheckoutState.loaded(totalPrice: $totalPrice, cartList: $cartList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutLoadedState &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalPrice, const DeepCollectionEquality().hash(_cartList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutLoadedStateCopyWith<_$CheckoutLoadedState> get copyWith =>
      __$$CheckoutLoadedStateCopyWithImpl<_$CheckoutLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) {
    return loaded(totalPrice, cartList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) {
    return loaded?.call(totalPrice, cartList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(totalPrice, cartList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoadedState implements CheckoutState {
  const factory CheckoutLoadedState(
      {required final double totalPrice,
      required final List<Cart> cartList}) = _$CheckoutLoadedState;

  double get totalPrice;
  List<Cart> get cartList;
  @JsonKey(ignore: true)
  _$$CheckoutLoadedStateCopyWith<_$CheckoutLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutSuccessStateCopyWith<$Res> {
  factory _$$CheckoutSuccessStateCopyWith(_$CheckoutSuccessState value,
          $Res Function(_$CheckoutSuccessState) then) =
      __$$CheckoutSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$$CheckoutSuccessStateCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutSuccessState>
    implements _$$CheckoutSuccessStateCopyWith<$Res> {
  __$$CheckoutSuccessStateCopyWithImpl(_$CheckoutSuccessState _value,
      $Res Function(_$CheckoutSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$CheckoutSuccessState(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$CheckoutSuccessState implements CheckoutSuccessState {
  const _$CheckoutSuccessState({required this.order});

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'CheckoutState.checkoutSuccess(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutSuccessState &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutSuccessStateCopyWith<_$CheckoutSuccessState> get copyWith =>
      __$$CheckoutSuccessStateCopyWithImpl<_$CheckoutSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(double totalPrice, List<Cart> cartList) loaded,
    required TResult Function(OrderModel order) checkoutSuccess,
  }) {
    return checkoutSuccess(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult? Function(OrderModel order)? checkoutSuccess,
  }) {
    return checkoutSuccess?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(double totalPrice, List<Cart> cartList)? loaded,
    TResult Function(OrderModel order)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (checkoutSuccess != null) {
      return checkoutSuccess(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitialState value) initial,
    required TResult Function(CheckoutLoadingState value) loading,
    required TResult Function(CheckoutErrorState value) error,
    required TResult Function(CheckoutLoadedState value) loaded,
    required TResult Function(CheckoutSuccessState value) checkoutSuccess,
  }) {
    return checkoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitialState value)? initial,
    TResult? Function(CheckoutLoadingState value)? loading,
    TResult? Function(CheckoutErrorState value)? error,
    TResult? Function(CheckoutLoadedState value)? loaded,
    TResult? Function(CheckoutSuccessState value)? checkoutSuccess,
  }) {
    return checkoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitialState value)? initial,
    TResult Function(CheckoutLoadingState value)? loading,
    TResult Function(CheckoutErrorState value)? error,
    TResult Function(CheckoutLoadedState value)? loaded,
    TResult Function(CheckoutSuccessState value)? checkoutSuccess,
    required TResult orElse(),
  }) {
    if (checkoutSuccess != null) {
      return checkoutSuccess(this);
    }
    return orElse();
  }
}

abstract class CheckoutSuccessState implements CheckoutState {
  const factory CheckoutSuccessState({required final OrderModel order}) =
      _$CheckoutSuccessState;

  OrderModel get order;
  @JsonKey(ignore: true)
  _$$CheckoutSuccessStateCopyWith<_$CheckoutSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

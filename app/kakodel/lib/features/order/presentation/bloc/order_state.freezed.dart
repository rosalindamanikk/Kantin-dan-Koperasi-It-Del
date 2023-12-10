// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderInitialStateCopyWith<$Res> {
  factory _$$OrderInitialStateCopyWith(
          _$OrderInitialState value, $Res Function(_$OrderInitialState) then) =
      __$$OrderInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderInitialStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderInitialState>
    implements _$$OrderInitialStateCopyWith<$Res> {
  __$$OrderInitialStateCopyWithImpl(
      _$OrderInitialState _value, $Res Function(_$OrderInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderInitialState implements OrderInitialState {
  const _$OrderInitialState();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
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
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OrderInitialState implements OrderState {
  const factory OrderInitialState() = _$OrderInitialState;
}

/// @nodoc
abstract class _$$OrderLoadingStateCopyWith<$Res> {
  factory _$$OrderLoadingStateCopyWith(
          _$OrderLoadingState value, $Res Function(_$OrderLoadingState) then) =
      __$$OrderLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoadingState>
    implements _$$OrderLoadingStateCopyWith<$Res> {
  __$$OrderLoadingStateCopyWithImpl(
      _$OrderLoadingState _value, $Res Function(_$OrderLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderLoadingState implements OrderLoadingState {
  const _$OrderLoadingState();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
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
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrderLoadingState implements OrderState {
  const factory OrderLoadingState() = _$OrderLoadingState;
}

/// @nodoc
abstract class _$$OrderErrorStateCopyWith<$Res> {
  factory _$$OrderErrorStateCopyWith(
          _$OrderErrorState value, $Res Function(_$OrderErrorState) then) =
      __$$OrderErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderErrorStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderErrorState>
    implements _$$OrderErrorStateCopyWith<$Res> {
  __$$OrderErrorStateCopyWithImpl(
      _$OrderErrorState _value, $Res Function(_$OrderErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderErrorState implements OrderErrorState {
  const _$OrderErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderErrorStateCopyWith<_$OrderErrorState> get copyWith =>
      __$$OrderErrorStateCopyWithImpl<_$OrderErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
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
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OrderErrorState implements OrderState {
  const factory OrderErrorState(final String message) = _$OrderErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$OrderErrorStateCopyWith<_$OrderErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderCancelledStateCopyWith<$Res> {
  factory _$$OrderCancelledStateCopyWith(_$OrderCancelledState value,
          $Res Function(_$OrderCancelledState) then) =
      __$$OrderCancelledStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderCancelledStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderCancelledState>
    implements _$$OrderCancelledStateCopyWith<$Res> {
  __$$OrderCancelledStateCopyWithImpl(
      _$OrderCancelledState _value, $Res Function(_$OrderCancelledState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderCancelledState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderCancelledState implements OrderCancelledState {
  const _$OrderCancelledState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.cancelled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCancelledState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCancelledStateCopyWith<_$OrderCancelledState> get copyWith =>
      __$$OrderCancelledStateCopyWithImpl<_$OrderCancelledState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) {
    return cancelled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) {
    return cancelled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class OrderCancelledState implements OrderState {
  const factory OrderCancelledState(final String message) =
      _$OrderCancelledState;

  String get message;
  @JsonKey(ignore: true)
  _$$OrderCancelledStateCopyWith<_$OrderCancelledState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderLoadedStateCopyWith<$Res> {
  factory _$$OrderLoadedStateCopyWith(
          _$OrderLoadedState value, $Res Function(_$OrderLoadedState) then) =
      __$$OrderLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class __$$OrderLoadedStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoadedState>
    implements _$$OrderLoadedStateCopyWith<$Res> {
  __$$OrderLoadedStateCopyWithImpl(
      _$OrderLoadedState _value, $Res Function(_$OrderLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrderLoadedState(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$OrderLoadedState implements OrderLoadedState {
  const _$OrderLoadedState({required final List<OrderModel> orders})
      : _orders = orders;

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderState.ordersLoaded(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoadedState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadedStateCopyWith<_$OrderLoadedState> get copyWith =>
      __$$OrderLoadedStateCopyWithImpl<_$OrderLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) cancelled,
    required TResult Function(List<OrderModel> orders) ordersLoaded,
  }) {
    return ordersLoaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? cancelled,
    TResult? Function(List<OrderModel> orders)? ordersLoaded,
  }) {
    return ordersLoaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? cancelled,
    TResult Function(List<OrderModel> orders)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (ordersLoaded != null) {
      return ordersLoaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitialState value) initial,
    required TResult Function(OrderLoadingState value) loading,
    required TResult Function(OrderErrorState value) error,
    required TResult Function(OrderCancelledState value) cancelled,
    required TResult Function(OrderLoadedState value) ordersLoaded,
  }) {
    return ordersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitialState value)? initial,
    TResult? Function(OrderLoadingState value)? loading,
    TResult? Function(OrderErrorState value)? error,
    TResult? Function(OrderCancelledState value)? cancelled,
    TResult? Function(OrderLoadedState value)? ordersLoaded,
  }) {
    return ordersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitialState value)? initial,
    TResult Function(OrderLoadingState value)? loading,
    TResult Function(OrderErrorState value)? error,
    TResult Function(OrderCancelledState value)? cancelled,
    TResult Function(OrderLoadedState value)? ordersLoaded,
    required TResult orElse(),
  }) {
    if (ordersLoaded != null) {
      return ordersLoaded(this);
    }
    return orElse();
  }
}

abstract class OrderLoadedState implements OrderState {
  const factory OrderLoadedState({required final List<OrderModel> orders}) =
      _$OrderLoadedState;

  List<OrderModel> get orders;
  @JsonKey(ignore: true)
  _$$OrderLoadedStateCopyWith<_$OrderLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

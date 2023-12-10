// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(String paymentMethod) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(String paymentMethod)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(String paymentMethod)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCart,
    required TResult Function(CheckoutCartEvent value) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCart,
    TResult? Function(CheckoutCartEvent value)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCart,
    TResult Function(CheckoutCartEvent value)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCartEventCopyWith<$Res> {
  factory _$$GetCartEventCopyWith(
          _$GetCartEvent value, $Res Function(_$GetCartEvent) then) =
      __$$GetCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartEventCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$GetCartEvent>
    implements _$$GetCartEventCopyWith<$Res> {
  __$$GetCartEventCopyWithImpl(
      _$GetCartEvent _value, $Res Function(_$GetCartEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartEvent implements GetCartEvent {
  const _$GetCartEvent();

  @override
  String toString() {
    return 'CheckoutEvent.getCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(String paymentMethod) checkout,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(String paymentMethod)? checkout,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(String paymentMethod)? checkout,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCart,
    required TResult Function(CheckoutCartEvent value) checkout,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCart,
    TResult? Function(CheckoutCartEvent value)? checkout,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCart,
    TResult Function(CheckoutCartEvent value)? checkout,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class GetCartEvent implements CheckoutEvent {
  const factory GetCartEvent() = _$GetCartEvent;
}

/// @nodoc
abstract class _$$CheckoutCartEventCopyWith<$Res> {
  factory _$$CheckoutCartEventCopyWith(
          _$CheckoutCartEvent value, $Res Function(_$CheckoutCartEvent) then) =
      __$$CheckoutCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentMethod});
}

/// @nodoc
class __$$CheckoutCartEventCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CheckoutCartEvent>
    implements _$$CheckoutCartEventCopyWith<$Res> {
  __$$CheckoutCartEventCopyWithImpl(
      _$CheckoutCartEvent _value, $Res Function(_$CheckoutCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$CheckoutCartEvent(
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutCartEvent implements CheckoutCartEvent {
  const _$CheckoutCartEvent({required this.paymentMethod});

  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'CheckoutEvent.checkout(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutCartEvent &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutCartEventCopyWith<_$CheckoutCartEvent> get copyWith =>
      __$$CheckoutCartEventCopyWithImpl<_$CheckoutCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(String paymentMethod) checkout,
  }) {
    return checkout(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(String paymentMethod)? checkout,
  }) {
    return checkout?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(String paymentMethod)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartEvent value) getCart,
    required TResult Function(CheckoutCartEvent value) checkout,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartEvent value)? getCart,
    TResult? Function(CheckoutCartEvent value)? checkout,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartEvent value)? getCart,
    TResult Function(CheckoutCartEvent value)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class CheckoutCartEvent implements CheckoutEvent {
  const factory CheckoutCartEvent({required final String paymentMethod}) =
      _$CheckoutCartEvent;

  String get paymentMethod;
  @JsonKey(ignore: true)
  _$$CheckoutCartEventCopyWith<_$CheckoutCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

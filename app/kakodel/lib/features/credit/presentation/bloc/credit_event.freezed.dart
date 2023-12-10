// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provider) getData,
    required TResult Function(Credit credit, String paymentMethod) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String provider)? getData,
    TResult? Function(Credit credit, String paymentMethod)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provider)? getData,
    TResult Function(Credit credit, String paymentMethod)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(CreditCheckoutEvent value) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(CreditCheckoutEvent value)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(CreditCheckoutEvent value)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditEventCopyWith<$Res> {
  factory $CreditEventCopyWith(
          CreditEvent value, $Res Function(CreditEvent) then) =
      _$CreditEventCopyWithImpl<$Res, CreditEvent>;
}

/// @nodoc
class _$CreditEventCopyWithImpl<$Res, $Val extends CreditEvent>
    implements $CreditEventCopyWith<$Res> {
  _$CreditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataEventCopyWith<$Res> {
  factory _$$GetDataEventCopyWith(
          _$GetDataEvent value, $Res Function(_$GetDataEvent) then) =
      __$$GetDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String provider});
}

/// @nodoc
class __$$GetDataEventCopyWithImpl<$Res>
    extends _$CreditEventCopyWithImpl<$Res, _$GetDataEvent>
    implements _$$GetDataEventCopyWith<$Res> {
  __$$GetDataEventCopyWithImpl(
      _$GetDataEvent _value, $Res Function(_$GetDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
  }) {
    return _then(_$GetDataEvent(
      null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDataEvent implements GetDataEvent {
  const _$GetDataEvent(this.provider);

  @override
  final String provider;

  @override
  String toString() {
    return 'CreditEvent.getData(provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataEvent &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataEventCopyWith<_$GetDataEvent> get copyWith =>
      __$$GetDataEventCopyWithImpl<_$GetDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provider) getData,
    required TResult Function(Credit credit, String paymentMethod) checkout,
  }) {
    return getData(provider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String provider)? getData,
    TResult? Function(Credit credit, String paymentMethod)? checkout,
  }) {
    return getData?.call(provider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provider)? getData,
    TResult Function(Credit credit, String paymentMethod)? checkout,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(provider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(CreditCheckoutEvent value) checkout,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(CreditCheckoutEvent value)? checkout,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(CreditCheckoutEvent value)? checkout,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent implements CreditEvent {
  const factory GetDataEvent(final String provider) = _$GetDataEvent;

  String get provider;
  @JsonKey(ignore: true)
  _$$GetDataEventCopyWith<_$GetDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCheckoutEventCopyWith<$Res> {
  factory _$$CreditCheckoutEventCopyWith(_$CreditCheckoutEvent value,
          $Res Function(_$CreditCheckoutEvent) then) =
      __$$CreditCheckoutEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Credit credit, String paymentMethod});

  $CreditCopyWith<$Res> get credit;
}

/// @nodoc
class __$$CreditCheckoutEventCopyWithImpl<$Res>
    extends _$CreditEventCopyWithImpl<$Res, _$CreditCheckoutEvent>
    implements _$$CreditCheckoutEventCopyWith<$Res> {
  __$$CreditCheckoutEventCopyWithImpl(
      _$CreditCheckoutEvent _value, $Res Function(_$CreditCheckoutEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credit = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$CreditCheckoutEvent(
      null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as Credit,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res> get credit {
    return $CreditCopyWith<$Res>(_value.credit, (value) {
      return _then(_value.copyWith(credit: value));
    });
  }
}

/// @nodoc

class _$CreditCheckoutEvent implements CreditCheckoutEvent {
  const _$CreditCheckoutEvent(this.credit, this.paymentMethod);

  @override
  final Credit credit;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'CreditEvent.checkout(credit: $credit, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCheckoutEvent &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credit, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCheckoutEventCopyWith<_$CreditCheckoutEvent> get copyWith =>
      __$$CreditCheckoutEventCopyWithImpl<_$CreditCheckoutEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provider) getData,
    required TResult Function(Credit credit, String paymentMethod) checkout,
  }) {
    return checkout(credit, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String provider)? getData,
    TResult? Function(Credit credit, String paymentMethod)? checkout,
  }) {
    return checkout?.call(credit, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provider)? getData,
    TResult Function(Credit credit, String paymentMethod)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(credit, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
    required TResult Function(CreditCheckoutEvent value) checkout,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
    TResult? Function(CreditCheckoutEvent value)? checkout,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    TResult Function(CreditCheckoutEvent value)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class CreditCheckoutEvent implements CreditEvent {
  const factory CreditCheckoutEvent(
      final Credit credit, final String paymentMethod) = _$CreditCheckoutEvent;

  Credit get credit;
  String get paymentMethod;
  @JsonKey(ignore: true)
  _$$CreditCheckoutEventCopyWith<_$CreditCheckoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

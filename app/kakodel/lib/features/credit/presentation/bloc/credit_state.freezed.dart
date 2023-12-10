// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditStateCopyWith<$Res> {
  factory $CreditStateCopyWith(
          CreditState value, $Res Function(CreditState) then) =
      _$CreditStateCopyWithImpl<$Res, CreditState>;
}

/// @nodoc
class _$CreditStateCopyWithImpl<$Res, $Val extends CreditState>
    implements $CreditStateCopyWith<$Res> {
  _$CreditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditInitialStateCopyWith<$Res> {
  factory _$$CreditInitialStateCopyWith(_$CreditInitialState value,
          $Res Function(_$CreditInitialState) then) =
      __$$CreditInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditInitialStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$CreditInitialState>
    implements _$$CreditInitialStateCopyWith<$Res> {
  __$$CreditInitialStateCopyWithImpl(
      _$CreditInitialState _value, $Res Function(_$CreditInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditInitialState implements CreditInitialState {
  const _$CreditInitialState();

  @override
  String toString() {
    return 'CreditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
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
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreditInitialState implements CreditState {
  const factory CreditInitialState() = _$CreditInitialState;
}

/// @nodoc
abstract class _$$CreditLoadingStateCopyWith<$Res> {
  factory _$$CreditLoadingStateCopyWith(_$CreditLoadingState value,
          $Res Function(_$CreditLoadingState) then) =
      __$$CreditLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditLoadingStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$CreditLoadingState>
    implements _$$CreditLoadingStateCopyWith<$Res> {
  __$$CreditLoadingStateCopyWithImpl(
      _$CreditLoadingState _value, $Res Function(_$CreditLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditLoadingState implements CreditLoadingState {
  const _$CreditLoadingState();

  @override
  String toString() {
    return 'CreditState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
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
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreditLoadingState implements CreditState {
  const factory CreditLoadingState() = _$CreditLoadingState;
}

/// @nodoc
abstract class _$$CreditErrorStateCopyWith<$Res> {
  factory _$$CreditErrorStateCopyWith(
          _$CreditErrorState value, $Res Function(_$CreditErrorState) then) =
      __$$CreditErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreditErrorStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$CreditErrorState>
    implements _$$CreditErrorStateCopyWith<$Res> {
  __$$CreditErrorStateCopyWithImpl(
      _$CreditErrorState _value, $Res Function(_$CreditErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreditErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreditErrorState implements CreditErrorState {
  const _$CreditErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreditState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditErrorStateCopyWith<_$CreditErrorState> get copyWith =>
      __$$CreditErrorStateCopyWithImpl<_$CreditErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
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
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreditErrorState implements CreditState {
  const factory CreditErrorState(final String message) = _$CreditErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$CreditErrorStateCopyWith<_$CreditErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditLoadedStateCopyWith<$Res> {
  factory _$$CreditLoadedStateCopyWith(
          _$CreditLoadedState value, $Res Function(_$CreditLoadedState) then) =
      __$$CreditLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Credit> creditList});
}

/// @nodoc
class __$$CreditLoadedStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$CreditLoadedState>
    implements _$$CreditLoadedStateCopyWith<$Res> {
  __$$CreditLoadedStateCopyWithImpl(
      _$CreditLoadedState _value, $Res Function(_$CreditLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditList = null,
  }) {
    return _then(_$CreditLoadedState(
      creditList: null == creditList
          ? _value._creditList
          : creditList // ignore: cast_nullable_to_non_nullable
              as List<Credit>,
    ));
  }
}

/// @nodoc

class _$CreditLoadedState implements CreditLoadedState {
  const _$CreditLoadedState({required final List<Credit> creditList})
      : _creditList = creditList;

  final List<Credit> _creditList;
  @override
  List<Credit> get creditList {
    if (_creditList is EqualUnmodifiableListView) return _creditList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditList);
  }

  @override
  String toString() {
    return 'CreditState.loaded(creditList: $creditList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditLoadedState &&
            const DeepCollectionEquality()
                .equals(other._creditList, _creditList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_creditList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditLoadedStateCopyWith<_$CreditLoadedState> get copyWith =>
      __$$CreditLoadedStateCopyWithImpl<_$CreditLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) {
    return loaded(creditList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) {
    return loaded?.call(creditList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(creditList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CreditLoadedState implements CreditState {
  const factory CreditLoadedState({required final List<Credit> creditList}) =
      _$CreditLoadedState;

  List<Credit> get creditList;
  @JsonKey(ignore: true)
  _$$CreditLoadedStateCopyWith<_$CreditLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditCheckoutSuccessStateCopyWith<$Res> {
  factory _$$CreditCheckoutSuccessStateCopyWith(
          _$CreditCheckoutSuccessState value,
          $Res Function(_$CreditCheckoutSuccessState) then) =
      __$$CreditCheckoutSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$$CreditCheckoutSuccessStateCopyWithImpl<$Res>
    extends _$CreditStateCopyWithImpl<$Res, _$CreditCheckoutSuccessState>
    implements _$$CreditCheckoutSuccessStateCopyWith<$Res> {
  __$$CreditCheckoutSuccessStateCopyWithImpl(
      _$CreditCheckoutSuccessState _value,
      $Res Function(_$CreditCheckoutSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$CreditCheckoutSuccessState(
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

class _$CreditCheckoutSuccessState implements CreditCheckoutSuccessState {
  const _$CreditCheckoutSuccessState({required this.order});

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'CreditState.checkout(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCheckoutSuccessState &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCheckoutSuccessStateCopyWith<_$CreditCheckoutSuccessState>
      get copyWith => __$$CreditCheckoutSuccessStateCopyWithImpl<
          _$CreditCheckoutSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Credit> creditList) loaded,
    required TResult Function(OrderModel order) checkout,
  }) {
    return checkout(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Credit> creditList)? loaded,
    TResult? Function(OrderModel order)? checkout,
  }) {
    return checkout?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Credit> creditList)? loaded,
    TResult Function(OrderModel order)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditInitialState value) initial,
    required TResult Function(CreditLoadingState value) loading,
    required TResult Function(CreditErrorState value) error,
    required TResult Function(CreditLoadedState value) loaded,
    required TResult Function(CreditCheckoutSuccessState value) checkout,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditInitialState value)? initial,
    TResult? Function(CreditLoadingState value)? loading,
    TResult? Function(CreditErrorState value)? error,
    TResult? Function(CreditLoadedState value)? loaded,
    TResult? Function(CreditCheckoutSuccessState value)? checkout,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditInitialState value)? initial,
    TResult Function(CreditLoadingState value)? loading,
    TResult Function(CreditErrorState value)? error,
    TResult Function(CreditLoadedState value)? loaded,
    TResult Function(CreditCheckoutSuccessState value)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class CreditCheckoutSuccessState implements CreditState {
  const factory CreditCheckoutSuccessState({required final OrderModel order}) =
      _$CreditCheckoutSuccessState;

  OrderModel get order;
  @JsonKey(ignore: true)
  _$$CreditCheckoutSuccessStateCopyWith<_$CreditCheckoutSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

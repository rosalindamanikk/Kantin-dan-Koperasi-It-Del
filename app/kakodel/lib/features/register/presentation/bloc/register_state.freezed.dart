// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(User user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(User user)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(User user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitialState value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterErrorState value) error,
    required TResult Function(RegisterLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitialState value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
    TResult? Function(RegisterLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitialState value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    TResult Function(RegisterLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterInitialStateCopyWith<$Res> {
  factory _$$RegisterInitialStateCopyWith(_$RegisterInitialState value,
          $Res Function(_$RegisterInitialState) then) =
      __$$RegisterInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterInitialStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterInitialState>
    implements _$$RegisterInitialStateCopyWith<$Res> {
  __$$RegisterInitialStateCopyWithImpl(_$RegisterInitialState _value,
      $Res Function(_$RegisterInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterInitialState implements RegisterInitialState {
  const _$RegisterInitialState();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(User user) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(User user)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(User user)? loaded,
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
    required TResult Function(RegisterInitialState value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterErrorState value) error,
    required TResult Function(RegisterLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitialState value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
    TResult? Function(RegisterLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitialState value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    TResult Function(RegisterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegisterInitialState implements RegisterState {
  const factory RegisterInitialState() = _$RegisterInitialState;
}

/// @nodoc
abstract class _$$RegisterLoadingStateCopyWith<$Res> {
  factory _$$RegisterLoadingStateCopyWith(_$RegisterLoadingState value,
          $Res Function(_$RegisterLoadingState) then) =
      __$$RegisterLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterLoadingState>
    implements _$$RegisterLoadingStateCopyWith<$Res> {
  __$$RegisterLoadingStateCopyWithImpl(_$RegisterLoadingState _value,
      $Res Function(_$RegisterLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingState implements RegisterLoadingState {
  const _$RegisterLoadingState();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(User user) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(User user)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(User user)? loaded,
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
    required TResult Function(RegisterInitialState value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterErrorState value) error,
    required TResult Function(RegisterLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitialState value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
    TResult? Function(RegisterLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitialState value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    TResult Function(RegisterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoadingState implements RegisterState {
  const factory RegisterLoadingState() = _$RegisterLoadingState;
}

/// @nodoc
abstract class _$$RegisterErrorStateCopyWith<$Res> {
  factory _$$RegisterErrorStateCopyWith(_$RegisterErrorState value,
          $Res Function(_$RegisterErrorState) then) =
      __$$RegisterErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterErrorStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterErrorState>
    implements _$$RegisterErrorStateCopyWith<$Res> {
  __$$RegisterErrorStateCopyWithImpl(
      _$RegisterErrorState _value, $Res Function(_$RegisterErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorState implements RegisterErrorState {
  const _$RegisterErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorStateCopyWith<_$RegisterErrorState> get copyWith =>
      __$$RegisterErrorStateCopyWithImpl<_$RegisterErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(User user) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(User user)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(User user)? loaded,
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
    required TResult Function(RegisterInitialState value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterErrorState value) error,
    required TResult Function(RegisterLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitialState value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
    TResult? Function(RegisterLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitialState value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    TResult Function(RegisterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterErrorState implements RegisterState {
  const factory RegisterErrorState(final String message) = _$RegisterErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterErrorStateCopyWith<_$RegisterErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadedStateCopyWith<$Res> {
  factory _$$RegisterLoadedStateCopyWith(_$RegisterLoadedState value,
          $Res Function(_$RegisterLoadedState) then) =
      __$$RegisterLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterLoadedStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterLoadedState>
    implements _$$RegisterLoadedStateCopyWith<$Res> {
  __$$RegisterLoadedStateCopyWithImpl(
      _$RegisterLoadedState _value, $Res Function(_$RegisterLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisterLoadedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RegisterLoadedState implements RegisterLoadedState {
  const _$RegisterLoadedState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'RegisterState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoadedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterLoadedStateCopyWith<_$RegisterLoadedState> get copyWith =>
      __$$RegisterLoadedStateCopyWithImpl<_$RegisterLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(User user) loaded,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(User user)? loaded,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(User user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitialState value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterErrorState value) error,
    required TResult Function(RegisterLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitialState value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterErrorState value)? error,
    TResult? Function(RegisterLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitialState value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterErrorState value)? error,
    TResult Function(RegisterLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RegisterLoadedState implements RegisterState {
  const factory RegisterLoadedState({required final User user}) =
      _$RegisterLoadedState;

  User get user;
  @JsonKey(ignore: true)
  _$$RegisterLoadedStateCopyWith<_$RegisterLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

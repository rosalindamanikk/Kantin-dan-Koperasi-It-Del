// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInitialStateCopyWith<$Res> {
  factory _$$ProfileInitialStateCopyWith(_$ProfileInitialState value,
          $Res Function(_$ProfileInitialState) then) =
      __$$ProfileInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialState>
    implements _$$ProfileInitialStateCopyWith<$Res> {
  __$$ProfileInitialStateCopyWithImpl(
      _$ProfileInitialState _value, $Res Function(_$ProfileInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInitialState implements ProfileInitialState {
  const _$ProfileInitialState();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitialState implements ProfileState {
  const factory ProfileInitialState() = _$ProfileInitialState;
}

/// @nodoc
abstract class _$$ProfileLoadingStateCopyWith<$Res> {
  factory _$$ProfileLoadingStateCopyWith(_$ProfileLoadingState value,
          $Res Function(_$ProfileLoadingState) then) =
      __$$ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingState>
    implements _$$ProfileLoadingStateCopyWith<$Res> {
  __$$ProfileLoadingStateCopyWithImpl(
      _$ProfileLoadingState _value, $Res Function(_$ProfileLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingState implements ProfileLoadingState {
  const _$ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingState implements ProfileState {
  const factory ProfileLoadingState() = _$ProfileLoadingState;
}

/// @nodoc
abstract class _$$ProfileLoadedStateCopyWith<$Res> {
  factory _$$ProfileLoadedStateCopyWith(_$ProfileLoadedState value,
          $Res Function(_$ProfileLoadedState) then) =
      __$$ProfileLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileLoadedStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedState>
    implements _$$ProfileLoadedStateCopyWith<$Res> {
  __$$ProfileLoadedStateCopyWithImpl(
      _$ProfileLoadedState _value, $Res Function(_$ProfileLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileLoadedState(
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

class _$ProfileLoadedState implements ProfileLoadedState {
  const _$ProfileLoadedState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      __$$ProfileLoadedStateCopyWithImpl<_$ProfileLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadedState implements ProfileState {
  const factory ProfileLoadedState({required final User user}) =
      _$ProfileLoadedState;

  User get user;
  @JsonKey(ignore: true)
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorStateCopyWith<$Res> {
  factory _$$ProfileErrorStateCopyWith(
          _$ProfileErrorState value, $Res Function(_$ProfileErrorState) then) =
      __$$ProfileErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileErrorStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorState>
    implements _$$ProfileErrorStateCopyWith<$Res> {
  __$$ProfileErrorStateCopyWithImpl(
      _$ProfileErrorState _value, $Res Function(_$ProfileErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorState implements ProfileErrorState {
  const _$ProfileErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      __$$ProfileErrorStateCopyWithImpl<_$ProfileErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
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
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileState {
  const factory ProfileErrorState(final String message) = _$ProfileErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLogoutStateCopyWith<$Res> {
  factory _$$ProfileLogoutStateCopyWith(_$ProfileLogoutState value,
          $Res Function(_$ProfileLogoutState) then) =
      __$$ProfileLogoutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLogoutStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLogoutState>
    implements _$$ProfileLogoutStateCopyWith<$Res> {
  __$$ProfileLogoutStateCopyWithImpl(
      _$ProfileLogoutState _value, $Res Function(_$ProfileLogoutState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLogoutState implements ProfileLogoutState {
  const _$ProfileLogoutState();

  @override
  String toString() {
    return 'ProfileState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLogoutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) loaded,
    required TResult Function(String message) error,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? loaded,
    TResult Function(String message)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitialState value) initial,
    required TResult Function(ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(ProfileErrorState value) error,
    required TResult Function(ProfileLogoutState value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitialState value)? initial,
    TResult? Function(ProfileLoadingState value)? loading,
    TResult? Function(ProfileLoadedState value)? loaded,
    TResult? Function(ProfileErrorState value)? error,
    TResult? Function(ProfileLogoutState value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitialState value)? initial,
    TResult Function(ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(ProfileErrorState value)? error,
    TResult Function(ProfileLogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class ProfileLogoutState implements ProfileState {
  const factory ProfileLogoutState() = _$ProfileLogoutState;
}

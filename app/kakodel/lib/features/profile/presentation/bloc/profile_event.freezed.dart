// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromLocalStorage,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserFromLocalStorage,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromLocalStorage,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserFromLocalStorageEvent value)
        getUserFromLocalStorage,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserFromLocalStorageEventCopyWith<$Res> {
  factory _$$GetUserFromLocalStorageEventCopyWith(
          _$GetUserFromLocalStorageEvent value,
          $Res Function(_$GetUserFromLocalStorageEvent) then) =
      __$$GetUserFromLocalStorageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserFromLocalStorageEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserFromLocalStorageEvent>
    implements _$$GetUserFromLocalStorageEventCopyWith<$Res> {
  __$$GetUserFromLocalStorageEventCopyWithImpl(
      _$GetUserFromLocalStorageEvent _value,
      $Res Function(_$GetUserFromLocalStorageEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserFromLocalStorageEvent implements GetUserFromLocalStorageEvent {
  const _$GetUserFromLocalStorageEvent();

  @override
  String toString() {
    return 'ProfileEvent.getUserFromLocalStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserFromLocalStorageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromLocalStorage,
    required TResult Function() logout,
  }) {
    return getUserFromLocalStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserFromLocalStorage,
    TResult? Function()? logout,
  }) {
    return getUserFromLocalStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromLocalStorage,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getUserFromLocalStorage != null) {
      return getUserFromLocalStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserFromLocalStorageEvent value)
        getUserFromLocalStorage,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return getUserFromLocalStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return getUserFromLocalStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (getUserFromLocalStorage != null) {
      return getUserFromLocalStorage(this);
    }
    return orElse();
  }
}

abstract class GetUserFromLocalStorageEvent implements ProfileEvent {
  const factory GetUserFromLocalStorageEvent() = _$GetUserFromLocalStorageEvent;
}

/// @nodoc
abstract class _$$LogoutEventCopyWith<$Res> {
  factory _$$LogoutEventCopyWith(
          _$LogoutEvent value, $Res Function(_$LogoutEvent) then) =
      __$$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogoutEvent>
    implements _$$LogoutEventCopyWith<$Res> {
  __$$LogoutEventCopyWithImpl(
      _$LogoutEvent _value, $Res Function(_$LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEvent implements LogoutEvent {
  const _$LogoutEvent();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserFromLocalStorage,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserFromLocalStorage,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserFromLocalStorage,
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
    required TResult Function(GetUserFromLocalStorageEvent value)
        getUserFromLocalStorage,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserFromLocalStorageEvent value)?
        getUserFromLocalStorage,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements ProfileEvent {
  const factory LogoutEvent() = _$LogoutEvent;
}

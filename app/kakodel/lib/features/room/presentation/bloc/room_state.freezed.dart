// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> roomList, User user) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> roomList, User user)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> roomList, User user)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitialState value) initial,
    required TResult Function(RoomLoadingState value) loading,
    required TResult Function(RoomErrorState value) error,
    required TResult Function(RoomLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitialState value)? initial,
    TResult? Function(RoomLoadingState value)? loading,
    TResult? Function(RoomErrorState value)? error,
    TResult? Function(RoomLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitialState value)? initial,
    TResult Function(RoomLoadingState value)? loading,
    TResult Function(RoomErrorState value)? error,
    TResult Function(RoomLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomInitialStateCopyWith<$Res> {
  factory _$$RoomInitialStateCopyWith(
          _$RoomInitialState value, $Res Function(_$RoomInitialState) then) =
      __$$RoomInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomInitialStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomInitialState>
    implements _$$RoomInitialStateCopyWith<$Res> {
  __$$RoomInitialStateCopyWithImpl(
      _$RoomInitialState _value, $Res Function(_$RoomInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomInitialState implements RoomInitialState {
  const _$RoomInitialState();

  @override
  String toString() {
    return 'RoomState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> roomList, User user) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> roomList, User user)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> roomList, User user)? loadedState,
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
    required TResult Function(RoomInitialState value) initial,
    required TResult Function(RoomLoadingState value) loading,
    required TResult Function(RoomErrorState value) error,
    required TResult Function(RoomLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitialState value)? initial,
    TResult? Function(RoomLoadingState value)? loading,
    TResult? Function(RoomErrorState value)? error,
    TResult? Function(RoomLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitialState value)? initial,
    TResult Function(RoomLoadingState value)? loading,
    TResult Function(RoomErrorState value)? error,
    TResult Function(RoomLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RoomInitialState implements RoomState {
  const factory RoomInitialState() = _$RoomInitialState;
}

/// @nodoc
abstract class _$$RoomLoadingStateCopyWith<$Res> {
  factory _$$RoomLoadingStateCopyWith(
          _$RoomLoadingState value, $Res Function(_$RoomLoadingState) then) =
      __$$RoomLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomLoadingStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoadingState>
    implements _$$RoomLoadingStateCopyWith<$Res> {
  __$$RoomLoadingStateCopyWithImpl(
      _$RoomLoadingState _value, $Res Function(_$RoomLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomLoadingState implements RoomLoadingState {
  const _$RoomLoadingState();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> roomList, User user) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> roomList, User user)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> roomList, User user)? loadedState,
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
    required TResult Function(RoomInitialState value) initial,
    required TResult Function(RoomLoadingState value) loading,
    required TResult Function(RoomErrorState value) error,
    required TResult Function(RoomLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitialState value)? initial,
    TResult? Function(RoomLoadingState value)? loading,
    TResult? Function(RoomErrorState value)? error,
    TResult? Function(RoomLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitialState value)? initial,
    TResult Function(RoomLoadingState value)? loading,
    TResult Function(RoomErrorState value)? error,
    TResult Function(RoomLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomLoadingState implements RoomState {
  const factory RoomLoadingState() = _$RoomLoadingState;
}

/// @nodoc
abstract class _$$RoomErrorStateCopyWith<$Res> {
  factory _$$RoomErrorStateCopyWith(
          _$RoomErrorState value, $Res Function(_$RoomErrorState) then) =
      __$$RoomErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RoomErrorStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomErrorState>
    implements _$$RoomErrorStateCopyWith<$Res> {
  __$$RoomErrorStateCopyWithImpl(
      _$RoomErrorState _value, $Res Function(_$RoomErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RoomErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomErrorState implements RoomErrorState {
  const _$RoomErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RoomState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomErrorStateCopyWith<_$RoomErrorState> get copyWith =>
      __$$RoomErrorStateCopyWithImpl<_$RoomErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> roomList, User user) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> roomList, User user)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> roomList, User user)? loadedState,
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
    required TResult Function(RoomInitialState value) initial,
    required TResult Function(RoomLoadingState value) loading,
    required TResult Function(RoomErrorState value) error,
    required TResult Function(RoomLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitialState value)? initial,
    TResult? Function(RoomLoadingState value)? loading,
    TResult? Function(RoomErrorState value)? error,
    TResult? Function(RoomLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitialState value)? initial,
    TResult Function(RoomLoadingState value)? loading,
    TResult Function(RoomErrorState value)? error,
    TResult Function(RoomLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomErrorState implements RoomState {
  const factory RoomErrorState(final String message) = _$RoomErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$RoomErrorStateCopyWith<_$RoomErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomLoadedStateCopyWith<$Res> {
  factory _$$RoomLoadedStateCopyWith(
          _$RoomLoadedState value, $Res Function(_$RoomLoadedState) then) =
      __$$RoomLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> roomList, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RoomLoadedStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoadedState>
    implements _$$RoomLoadedStateCopyWith<$Res> {
  __$$RoomLoadedStateCopyWithImpl(
      _$RoomLoadedState _value, $Res Function(_$RoomLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomList = null,
    Object? user = null,
  }) {
    return _then(_$RoomLoadedState(
      roomList: null == roomList
          ? _value._roomList
          : roomList // ignore: cast_nullable_to_non_nullable
              as List<Room>,
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

class _$RoomLoadedState implements RoomLoadedState {
  const _$RoomLoadedState(
      {required final List<Room> roomList, required this.user})
      : _roomList = roomList;

  final List<Room> _roomList;
  @override
  List<Room> get roomList {
    if (_roomList is EqualUnmodifiableListView) return _roomList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomList);
  }

  @override
  final User user;

  @override
  String toString() {
    return 'RoomState.loadedState(roomList: $roomList, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomLoadedState &&
            const DeepCollectionEquality().equals(other._roomList, _roomList) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_roomList), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomLoadedStateCopyWith<_$RoomLoadedState> get copyWith =>
      __$$RoomLoadedStateCopyWithImpl<_$RoomLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Room> roomList, User user) loadedState,
  }) {
    return loadedState(roomList, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Room> roomList, User user)? loadedState,
  }) {
    return loadedState?.call(roomList, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Room> roomList, User user)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(roomList, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitialState value) initial,
    required TResult Function(RoomLoadingState value) loading,
    required TResult Function(RoomErrorState value) error,
    required TResult Function(RoomLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitialState value)? initial,
    TResult? Function(RoomLoadingState value)? loading,
    TResult? Function(RoomErrorState value)? error,
    TResult? Function(RoomLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitialState value)? initial,
    TResult Function(RoomLoadingState value)? loading,
    TResult Function(RoomErrorState value)? error,
    TResult Function(RoomLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class RoomLoadedState implements RoomState {
  const factory RoomLoadedState(
      {required final List<Room> roomList,
      required final User user}) = _$RoomLoadedState;

  List<Room> get roomList;
  User get user;
  @JsonKey(ignore: true)
  _$$RoomLoadedStateCopyWith<_$RoomLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

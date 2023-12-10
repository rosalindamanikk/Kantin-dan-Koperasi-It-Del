// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_room_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestRoomEvent {
  String get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getRequestRoomsFromServer,
    required TResult Function(String status, RequestRoom requestRoom)
        cancelRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getRequestRoomsFromServer,
    TResult? Function(String status, RequestRoom requestRoom)? cancelRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getRequestRoomsFromServer,
    TResult Function(String status, RequestRoom requestRoom)? cancelRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestRoomsEvent value)
        getRequestRoomsFromServer,
    required TResult Function(CancelRequestEvent value) cancelRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult? Function(CancelRequestEvent value)? cancelRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult Function(CancelRequestEvent value)? cancelRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestRoomEventCopyWith<RequestRoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRoomEventCopyWith<$Res> {
  factory $RequestRoomEventCopyWith(
          RequestRoomEvent value, $Res Function(RequestRoomEvent) then) =
      _$RequestRoomEventCopyWithImpl<$Res, RequestRoomEvent>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$RequestRoomEventCopyWithImpl<$Res, $Val extends RequestRoomEvent>
    implements $RequestRoomEventCopyWith<$Res> {
  _$RequestRoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRequestRoomsEventCopyWith<$Res>
    implements $RequestRoomEventCopyWith<$Res> {
  factory _$$GetRequestRoomsEventCopyWith(_$GetRequestRoomsEvent value,
          $Res Function(_$GetRequestRoomsEvent) then) =
      __$$GetRequestRoomsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$GetRequestRoomsEventCopyWithImpl<$Res>
    extends _$RequestRoomEventCopyWithImpl<$Res, _$GetRequestRoomsEvent>
    implements _$$GetRequestRoomsEventCopyWith<$Res> {
  __$$GetRequestRoomsEventCopyWithImpl(_$GetRequestRoomsEvent _value,
      $Res Function(_$GetRequestRoomsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetRequestRoomsEvent(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRequestRoomsEvent implements GetRequestRoomsEvent {
  const _$GetRequestRoomsEvent(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'RequestRoomEvent.getRequestRoomsFromServer(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestRoomsEvent &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestRoomsEventCopyWith<_$GetRequestRoomsEvent> get copyWith =>
      __$$GetRequestRoomsEventCopyWithImpl<_$GetRequestRoomsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getRequestRoomsFromServer,
    required TResult Function(String status, RequestRoom requestRoom)
        cancelRequest,
  }) {
    return getRequestRoomsFromServer(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getRequestRoomsFromServer,
    TResult? Function(String status, RequestRoom requestRoom)? cancelRequest,
  }) {
    return getRequestRoomsFromServer?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getRequestRoomsFromServer,
    TResult Function(String status, RequestRoom requestRoom)? cancelRequest,
    required TResult orElse(),
  }) {
    if (getRequestRoomsFromServer != null) {
      return getRequestRoomsFromServer(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestRoomsEvent value)
        getRequestRoomsFromServer,
    required TResult Function(CancelRequestEvent value) cancelRequest,
  }) {
    return getRequestRoomsFromServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult? Function(CancelRequestEvent value)? cancelRequest,
  }) {
    return getRequestRoomsFromServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult Function(CancelRequestEvent value)? cancelRequest,
    required TResult orElse(),
  }) {
    if (getRequestRoomsFromServer != null) {
      return getRequestRoomsFromServer(this);
    }
    return orElse();
  }
}

abstract class GetRequestRoomsEvent implements RequestRoomEvent {
  const factory GetRequestRoomsEvent(final String status) =
      _$GetRequestRoomsEvent;

  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$GetRequestRoomsEventCopyWith<_$GetRequestRoomsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelRequestEventCopyWith<$Res>
    implements $RequestRoomEventCopyWith<$Res> {
  factory _$$CancelRequestEventCopyWith(_$CancelRequestEvent value,
          $Res Function(_$CancelRequestEvent) then) =
      __$$CancelRequestEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, RequestRoom requestRoom});

  $RequestRoomCopyWith<$Res> get requestRoom;
}

/// @nodoc
class __$$CancelRequestEventCopyWithImpl<$Res>
    extends _$RequestRoomEventCopyWithImpl<$Res, _$CancelRequestEvent>
    implements _$$CancelRequestEventCopyWith<$Res> {
  __$$CancelRequestEventCopyWithImpl(
      _$CancelRequestEvent _value, $Res Function(_$CancelRequestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? requestRoom = null,
  }) {
    return _then(_$CancelRequestEvent(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == requestRoom
          ? _value.requestRoom
          : requestRoom // ignore: cast_nullable_to_non_nullable
              as RequestRoom,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestRoomCopyWith<$Res> get requestRoom {
    return $RequestRoomCopyWith<$Res>(_value.requestRoom, (value) {
      return _then(_value.copyWith(requestRoom: value));
    });
  }
}

/// @nodoc

class _$CancelRequestEvent implements CancelRequestEvent {
  const _$CancelRequestEvent(this.status, this.requestRoom);

  @override
  final String status;
  @override
  final RequestRoom requestRoom;

  @override
  String toString() {
    return 'RequestRoomEvent.cancelRequest(status: $status, requestRoom: $requestRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRequestEvent &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestRoom, requestRoom) ||
                other.requestRoom == requestRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, requestRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRequestEventCopyWith<_$CancelRequestEvent> get copyWith =>
      __$$CancelRequestEventCopyWithImpl<_$CancelRequestEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) getRequestRoomsFromServer,
    required TResult Function(String status, RequestRoom requestRoom)
        cancelRequest,
  }) {
    return cancelRequest(status, requestRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? getRequestRoomsFromServer,
    TResult? Function(String status, RequestRoom requestRoom)? cancelRequest,
  }) {
    return cancelRequest?.call(status, requestRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? getRequestRoomsFromServer,
    TResult Function(String status, RequestRoom requestRoom)? cancelRequest,
    required TResult orElse(),
  }) {
    if (cancelRequest != null) {
      return cancelRequest(status, requestRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestRoomsEvent value)
        getRequestRoomsFromServer,
    required TResult Function(CancelRequestEvent value) cancelRequest,
  }) {
    return cancelRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult? Function(CancelRequestEvent value)? cancelRequest,
  }) {
    return cancelRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestRoomsEvent value)? getRequestRoomsFromServer,
    TResult Function(CancelRequestEvent value)? cancelRequest,
    required TResult orElse(),
  }) {
    if (cancelRequest != null) {
      return cancelRequest(this);
    }
    return orElse();
  }
}

abstract class CancelRequestEvent implements RequestRoomEvent {
  const factory CancelRequestEvent(
          final String status, final RequestRoom requestRoom) =
      _$CancelRequestEvent;

  @override
  String get status;
  RequestRoom get requestRoom;
  @override
  @JsonKey(ignore: true)
  _$$CancelRequestEventCopyWith<_$CancelRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

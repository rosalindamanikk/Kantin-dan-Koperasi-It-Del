// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestRoom _$RequestRoomFromJson(Map<String, dynamic> json) {
  return _RequestRoom.fromJson(json);
}

/// @nodoc
mixin _$RequestRoom {
  int get id => throw _privateConstructorUsedError;
  Room get room => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRoomCopyWith<RequestRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRoomCopyWith<$Res> {
  factory $RequestRoomCopyWith(
          RequestRoom value, $Res Function(RequestRoom) then) =
      _$RequestRoomCopyWithImpl<$Res, RequestRoom>;
  @useResult
  $Res call(
      {int id,
      Room room,
      String description,
      String status,
      String startDate,
      String endDate,
      String createdAt,
      String updatedAt});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$RequestRoomCopyWithImpl<$Res, $Val extends RequestRoom>
    implements $RequestRoomCopyWith<$Res> {
  _$RequestRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? description = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequestRoomCopyWith<$Res>
    implements $RequestRoomCopyWith<$Res> {
  factory _$$_RequestRoomCopyWith(
          _$_RequestRoom value, $Res Function(_$_RequestRoom) then) =
      __$$_RequestRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Room room,
      String description,
      String status,
      String startDate,
      String endDate,
      String createdAt,
      String updatedAt});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$$_RequestRoomCopyWithImpl<$Res>
    extends _$RequestRoomCopyWithImpl<$Res, _$_RequestRoom>
    implements _$$_RequestRoomCopyWith<$Res> {
  __$$_RequestRoomCopyWithImpl(
      _$_RequestRoom _value, $Res Function(_$_RequestRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? room = null,
    Object? description = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_RequestRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestRoom implements _RequestRoom {
  const _$_RequestRoom(
      {required this.id,
      required this.room,
      required this.description,
      required this.status,
      required this.startDate,
      required this.endDate,
      required this.createdAt,
      required this.updatedAt});

  factory _$_RequestRoom.fromJson(Map<String, dynamic> json) =>
      _$$_RequestRoomFromJson(json);

  @override
  final int id;
  @override
  final Room room;
  @override
  final String description;
  @override
  final String status;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'RequestRoom(id: $id, room: $room, description: $description, status: $status, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, room, description, status,
      startDate, endDate, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestRoomCopyWith<_$_RequestRoom> get copyWith =>
      __$$_RequestRoomCopyWithImpl<_$_RequestRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestRoomToJson(
      this,
    );
  }
}

abstract class _RequestRoom implements RequestRoom {
  const factory _RequestRoom(
      {required final int id,
      required final Room room,
      required final String description,
      required final String status,
      required final String startDate,
      required final String endDate,
      required final String createdAt,
      required final String updatedAt}) = _$_RequestRoom;

  factory _RequestRoom.fromJson(Map<String, dynamic> json) =
      _$_RequestRoom.fromJson;

  @override
  int get id;
  @override
  Room get room;
  @override
  String get description;
  @override
  String get status;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RequestRoomCopyWith<_$_RequestRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestRoom _$$_RequestRoomFromJson(Map<String, dynamic> json) =>
    _$_RequestRoom(
      id: json['id'] as int,
      room: Room.fromJson(json['room'] as Map<String, dynamic>),
      description: json['description'] as String,
      status: json['status'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_RequestRoomToJson(_$_RequestRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room': instance.room,
      'description': instance.description,
      'status': instance.status,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

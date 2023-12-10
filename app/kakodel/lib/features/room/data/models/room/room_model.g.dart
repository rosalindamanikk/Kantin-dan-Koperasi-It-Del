// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'status': instance.status,
    };

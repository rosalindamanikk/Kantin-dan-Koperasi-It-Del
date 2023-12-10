// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      code: json['code'] as String,
      total: (json['total'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'total': instance.total,
      'paymentMethod': instance.paymentMethod,
    };

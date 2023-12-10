// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Credit _$$_CreditFromJson(Map<String, dynamic> json) => _$_Credit(
      id: json['id'] as int,
      provider: json['provider'] as String,
      nominal: json['nominal'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CreditToJson(_$_Credit instance) => <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'nominal': instance.nominal,
      'price': instance.price,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'quantity': instance.quantity,
    };

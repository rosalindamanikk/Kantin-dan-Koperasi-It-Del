// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
    };

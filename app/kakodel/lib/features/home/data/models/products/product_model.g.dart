// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      quantity: json['quantity'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      category: json['category'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'image': instance.image,
      'category': instance.category,
    };

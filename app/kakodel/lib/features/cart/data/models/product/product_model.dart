import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    required String sku,
    required String description,
    required double price,
    required int quantity,
    required String image,
    required String category,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

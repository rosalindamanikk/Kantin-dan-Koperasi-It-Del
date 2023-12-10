import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

typedef ProductList = List<Product>;

@freezed
class Product with _$Product {
  factory Product({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String sku,
    @Default('') String description,
    @Default(0.0) double price,
    @Default(0) int quantity,
    @Default('') String image,
    @Default('') String category,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

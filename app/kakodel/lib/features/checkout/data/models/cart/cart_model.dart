import 'package:freezed_annotation/freezed_annotation.dart';
import '../product/product_model.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

typedef CartList = List<Cart>;

@freezed
class Cart with _$Cart {
  factory Cart({
    required int id,
    required Product product,
    required int quantity,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}

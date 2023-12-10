import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/product_cart_entity.dart';
part 'cart_event.freezed.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = GetCartEvent;
  const factory CartEvent.increaseQuantity({
    required ProductCartEntity productCartEntity,
  }) = IncreaseQuantityEvent;
  const factory CartEvent.decreaseQuantity({
    required ProductCartEntity productCartEntity,
  }) = DecreaseQuantityEvent;
  const factory CartEvent.deleteFromCart({
    required ProductCartEntity productCartEntity,
  }) = DeleteFromCartEvent;
  // const factory CartEvent.clearCart() = ClearCartEvent;
}

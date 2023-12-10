import '../../data/models/cart/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = CartInitialState;
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.error(String message) = CartErrorState;
  const factory CartState.loaded({
    required CartList cartList,
    required double totalPrice,
  }) = CartLoadedState;
}

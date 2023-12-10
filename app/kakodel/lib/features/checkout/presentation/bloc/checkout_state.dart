import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/cart/cart_model.dart';
import '../../data/models/order/order_model.dart';

part 'checkout_state.freezed.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = CheckoutInitialState;
  const factory CheckoutState.loading() = CheckoutLoadingState;
  const factory CheckoutState.error(String message) = CheckoutErrorState;
  const factory CheckoutState.loaded({
    required double totalPrice,
    required CartList cartList,
  }) = CheckoutLoadedState;
  const factory CheckoutState.checkoutSuccess({required OrderModel order}) =
      CheckoutSuccessState;
}

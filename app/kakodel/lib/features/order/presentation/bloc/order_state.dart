import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/order/order_model.dart';
part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = OrderInitialState;
  const factory OrderState.loading() = OrderLoadingState;
  const factory OrderState.error(String message) = OrderErrorState;
  const factory OrderState.cancelled(String message) = OrderCancelledState;
  const factory OrderState.ordersLoaded({required OrderList orders}) =
      OrderLoadedState;
}

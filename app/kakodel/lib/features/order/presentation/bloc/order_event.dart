import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/order/order_model.dart';
part 'order_event.freezed.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrdersFromServer(String status) = GetOrdersEvent;
  const factory OrderEvent.cancelOrder(String status, OrderModel order) =
      CancelOrderEvent;
}

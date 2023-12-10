import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/order/domain/usecases/cancel_order_usecase.dart';
import 'package:delmart/features/order/presentation/bloc/order_event.dart';
import 'package:delmart/features/order/presentation/bloc/order_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_order.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const OrderInitialState()) {
    on<GetOrdersEvent>((event, emit) async {
      emit(const OrderLoadingState());
      try {
        final orders =
            await serviceLocator<GetOrdersFromServer>().getOrdersFromServer(
          event.status,
        );
        orders.fold(
          (failure) => emit(OrderErrorState(failure.toString())),
          (orderList) => emit(OrderLoadedState(orders: orderList)),
        );
      } catch (e) {
        debugPrint(e.toString());
        emit(OrderErrorState(e.toString()));
      }
    });
    on<CancelOrderEvent>((event, emit) async {
      emit(const OrderLoadingState());
      try {
        final response = await serviceLocator<CancelOrderUseCase>()
            .cancelOrder(event.status, event.order);
        response.fold(
          (failure) => emit(OrderErrorState(failure.toString())),
          (message) => emit(OrderCancelledState(message)),
        );
      } catch (e) {
        emit(OrderErrorState(e.toString()));
      }
    });
  }
}

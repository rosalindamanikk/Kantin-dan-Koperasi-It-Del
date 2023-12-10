import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/order/order_model.dart';
import '../repository/order_repository.dart';

class CancelOrderUseCase {
  Future<Either<Failure, String>> cancelOrder(String status, OrderModel order) {
    return serviceLocator<OrderRepository>().cancelOrder(status, order);
  }
}

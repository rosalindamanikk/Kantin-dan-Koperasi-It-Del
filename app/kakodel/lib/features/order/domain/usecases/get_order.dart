import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/order/order_model.dart';
import '../repository/order_repository.dart';

class GetOrdersFromServer {
  Future<Either<Failure, OrderList>> getOrdersFromServer(String status) {
    return serviceLocator<OrderRepository>().getOrdersFromServer(status);
  }
}

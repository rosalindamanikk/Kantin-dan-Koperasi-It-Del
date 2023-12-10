import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/order/order_model.dart';

abstract class OrderRepository {
  Future<Either<Failure, String>> cancelOrder(String status, OrderModel order);
  Future<Either<Failure, OrderList>> getOrdersFromServer(String status);
}

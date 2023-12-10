import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/order_repository.dart';
import '../datasource/order_remote_source.dart';
import '../models/order/order_model.dart';

class OrderRepositoryImpl extends OrderRepository {
  @override
  Future<Either<Failure, String>> cancelOrder(String status, OrderModel order) {
    return serviceLocator<OrderRemoteDataSource>().cancelOrder(status, order);
  }

  @override
  Future<Either<Failure, OrderList>> getOrdersFromServer(String status) {
    return serviceLocator<OrderRemoteDataSource>().getOrdersFromServer(status);
  }
}

import 'package:dartz/dartz.dart';
import 'package:delmart/core/request.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../models/order/order_model.dart';

abstract class OrderRemoteDataSource {
  Future<Either<Failure, String>> cancelOrder(String status, OrderModel order);
  Future<Either<Failure, OrderList>> getOrdersFromServer(String status);
}

class OrderRemoteDataSourceImpl extends OrderRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, String>> cancelOrder(
      String status, OrderModel order) async {
    try {
      final response = await request.put('/orders/cancel/${order.id}');
      if (response.statusCode == 200) {
        return const Right('Order cancelled successfully');
      } else {
        return const Left(
          ParsingFailure('Unable to parse the response'),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, OrderList>> getOrdersFromServer(String status) async {
    try {
      final response = await request.get('/orders?status=$status');
      if (response.statusCode == 200) {
        try {
          final OrderList orderList = [];
          final orderListMap = response.data['data'];
          try {
            for (var item in orderListMap) {
              orderList.add(OrderModel.fromJson(item));
            }
          } catch (e) {
            debugPrint(e.toString());
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
          return Right(orderList);
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:delmart/core/request.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../models/cart/cart_model.dart';
import '../models/order/order_model.dart';

abstract class CheckoutRemoteDataSource {
  Future<Either<Failure, CartList>> getCartFromServer();
  Future<Either<Failure, OrderModel>> checkout(String paymentMethod);
}

class CheckoutRemoteDataSourceImpl implements CheckoutRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, CartList>> getCartFromServer() async {
    try {
      final response = await request.get('/cart');
      if (response.statusCode == 200) {
        try {
          final CartList cartList = [];
          final cartListMap = response.data['data'];
          try {
            for (var item in cartListMap) {
              cartList.add(Cart.fromJson(item));
            }
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
          return Right(cartList);
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

  @override
  Future<Either<Failure, OrderModel>> checkout(String paymentMethod) async {
    try {
      final response = await request.post('/checkout', data: {
        'description': 'Pembelian produk di DelMart',
        'payment_method': paymentMethod,
      });
      if (response.statusCode == 200) {
        try {
          final OrderModel order = OrderModel.fromJson(response.data['data']);
          return Right(order);
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

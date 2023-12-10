import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/cart/cart_model.dart';
import '../../data/models/order/order_model.dart';

abstract class CheckoutRepository {
  Future<Either<Failure, CartList>> getCartFromServer();
  double getTotalPrice(CartList cartList);
  Future<Either<Failure, OrderModel>> checkout(String paymentMethod);
}

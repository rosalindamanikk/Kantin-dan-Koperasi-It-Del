import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/cart/cart_model.dart';
import '../entities/product_cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, CartList>> getCartFromServer();
  Future<Either<Failure, Cart>> increaseQuantity(
      ProductCartEntity productCartEntity);
  Future<Either<Failure, Cart>> decreaseQuantity(
      ProductCartEntity productCartEntity);
  Future<Either<Failure, Cart>> deleteFromCart(
      ProductCartEntity productCartEntity);
  double getTotalPrice(CartList cartList);
}

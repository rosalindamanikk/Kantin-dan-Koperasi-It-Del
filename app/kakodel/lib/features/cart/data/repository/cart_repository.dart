import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/entities/product_cart_entity.dart';
import '../../domain/repository/cart_repository.dart';
import '../datasource/cart_remote_source.dart';
import '../models/cart/cart_model.dart';

class CartRepositoryImpl extends CartRepository {
  @override
  Future<Either<Failure, CartList>> getCartFromServer() {
    return serviceLocator<CartRemoteDataSource>().getCartFromServer();
  }

  @override
  Future<Either<Failure, Cart>> decreaseQuantity(
      ProductCartEntity productCartEntity) {
    return serviceLocator<CartRemoteDataSource>()
        .decreaseQuantity(productCartEntity);
  }

  @override
  Future<Either<Failure, Cart>> increaseQuantity(
      ProductCartEntity productCartEntity) {
    return serviceLocator<CartRemoteDataSource>()
        .increaseQuantity(productCartEntity);
  }

  @override
  Future<Either<Failure, Cart>> deleteFromCart(
      ProductCartEntity productCartEntity) {
    return serviceLocator<CartRemoteDataSource>()
        .deleteFromCart(productCartEntity);
  }

  @override
  double getTotalPrice(CartList cartList) {
    double totalPrice = 0;
    for (var cart in cartList) {
      totalPrice += cart.product.price * cart.quantity;
    }
    return totalPrice;
  }
}

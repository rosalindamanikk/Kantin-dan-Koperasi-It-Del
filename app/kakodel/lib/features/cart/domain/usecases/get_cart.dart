import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/cart/cart_model.dart';
import '../repository/cart_repository.dart';

class GetCartFromServer {
  Future<Either<Failure, CartList>> getCartFromServer() {
    return serviceLocator<CartRepository>().getCartFromServer();
  }

  double getTotalPrice(CartList cartList) {
    return serviceLocator<CartRepository>().getTotalPrice(cartList);
  }
}

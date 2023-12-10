import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/cart/cart_model.dart';
import '../entities/product_cart_entity.dart';
import '../repository/cart_repository.dart';

class IncreaseQuantity {
  Future<Either<Failure, Cart>> increaseQuantity(
      ProductCartEntity productCartEntity) async {
    return serviceLocator<CartRepository>().increaseQuantity(productCartEntity);
  }
}

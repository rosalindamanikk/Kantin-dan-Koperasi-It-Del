import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/cart/cart_model.dart';
import '../entities/product_cart_entity.dart';
import '../repository/cart_repository.dart';

class DecreaseQuantity {
  Future<Either<Failure, Cart>> decreaseQuantity(
      ProductCartEntity productCartEntity) async {
    return serviceLocator<CartRepository>().decreaseQuantity(productCartEntity);
  }
}

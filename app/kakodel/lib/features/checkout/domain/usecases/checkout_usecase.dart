import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/order/order_model.dart';
import '../repository/checkout_repository.dart';

class CheckoutUseCase {
  Future<Either<Failure, OrderModel>> checkout(String paymentMethod) {
    return serviceLocator<CheckoutRepository>().checkout(paymentMethod);
  }
}

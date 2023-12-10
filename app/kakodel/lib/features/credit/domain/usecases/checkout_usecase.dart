import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/credit/credit_model.dart';
import '../../data/models/order/order_model.dart';
import '../repository/credit_repository.dart';

class CreditCheckoutUseCase {
  Future<Either<Failure, OrderModel>> checkout(
      Credit credit, String paymentMethod) {
    return serviceLocator<CreditRepository>().checkout(credit, paymentMethod);
  }
}

import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/credit/credit_model.dart';
import '../../data/models/order/order_model.dart';

abstract class CreditRepository {
  Future<Either<Failure, CreditList>> getCreditsFromServer(String provider);
  Future<Either<Failure, OrderModel>> checkout(
      Credit credit, String paymentMethod);
}

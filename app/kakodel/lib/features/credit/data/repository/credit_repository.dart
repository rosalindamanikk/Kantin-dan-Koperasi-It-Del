import 'package:dartz/dartz.dart';
import 'package:delmart/features/credit/data/models/order/order_model.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/credit_repository.dart';
import '../datasource/credit_remote_source.dart';
import '../models/credit/credit_model.dart';

class CreditRepositoryImpl extends CreditRepository {
  @override
  Future<Either<Failure, CreditList>> getCreditsFromServer(String provider) {
    return serviceLocator<CreditsRemoteDataSource>()
        .getCreditsFromServer(provider);
  }

  @override
  Future<Either<Failure, OrderModel>> checkout(Credit credit, String paymentMethod) {
    return serviceLocator<CreditsRemoteDataSource>().checkout(credit, paymentMethod);
  }
}

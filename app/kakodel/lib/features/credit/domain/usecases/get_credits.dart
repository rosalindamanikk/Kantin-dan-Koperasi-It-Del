import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';

import '../../data/models/credit/credit_model.dart';
import '../repository/credit_repository.dart';

class GetCreditsFromServer {
  Future<Either<Failure, CreditList>> getCreditsFromServer(String provider) {
    return serviceLocator<CreditRepository>().getCreditsFromServer(provider);
  }
}

import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/user_model.dart';
import '../repository/profile_repository.dart';

class GetLocalUserUsecase {
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    return serviceLocator<ProfileRepository>().getUserFromLocalStorage();
  }
}

import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../repository/profile_repository.dart';

class LogoutUseCase {
  Future<Either<Failure, bool>> logout() {
    return serviceLocator<ProfileRepository>().logout();
  }
}

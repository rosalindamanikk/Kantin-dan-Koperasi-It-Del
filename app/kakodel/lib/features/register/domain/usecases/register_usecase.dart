import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../../../services/user_cache_service.dart';
import '../../data/models/user_model.dart';
import '../repository/register_user_repository.dart';

class RegisterUserUsecase {
  // normal Register
  Future<Either<Failure, User>> registerUser(User user) async {
    final response =
        await serviceLocator<RegisterUserRepository>().register(user: user);
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      // save user in cache
      await serviceLocator<UserCacheService>().saveUserRegister(remoteUser);
    }
    return response;
  }

  // google Register
  Future<Either<Failure, User>> registerUserWithGoogle() async {
    final response =
        await serviceLocator<RegisterUserRepository>().registerWithGoogle();
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<UserCacheService>().saveUserRegister(remoteUser);
    }
    return response;
  }

  // facebook Register
  Future<Either<Failure, User>> registerUserWithFacebook() async {
    final response =
        await serviceLocator<RegisterUserRepository>().registerWithFacebook();
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<UserCacheService>().saveUserRegister(remoteUser);
    }
    return response;
  }
}

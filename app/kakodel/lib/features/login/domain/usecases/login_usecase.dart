import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../../../services/user_cache_service.dart';
import '../../data/models/user_model.dart';
import '../repository/login_user_repository.dart';

class LoginUserUsecase {
  // normal login
  Future<Either<Failure, User>> loginUser(User user) async {
    final response =
        await serviceLocator<LoginUserRepository>().login(user: user);
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }
    return response;
  }

  // google login
  Future<Either<Failure, User>> loginUserWithGoogle() async {
    final response =
        await serviceLocator<LoginUserRepository>().loginWithGoogle();
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }
    return response;
  }

  // facebook login
  Future<Either<Failure, User>> loginUserWithFacebook() async {
    final response =
        await serviceLocator<LoginUserRepository>().loginWithFacebook();
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      serviceLocator<Request>().updateAuthorization(
        remoteUser.token,
      );
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }
    return response;
  }
}

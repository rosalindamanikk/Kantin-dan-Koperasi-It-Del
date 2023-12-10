import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/login_user_repository.dart';
import '../datasource/login_remote_datasource.dart';
import '../models/user_model.dart';

class LoginUserRepositoryImpl implements LoginUserRepository {
  // normal login
  @override
  Future<Either<Failure, User>> login({required User user}) {
    return serviceLocator<LoginRemoteDataSource>().loginUser(
      user: user,
    );
  }

  // google login
  @override
  Future<Either<Failure, User>> loginWithGoogle() {
    return serviceLocator<LoginRemoteDataSource>().loginUserWithGoogle();
  }

  // facebook login
  @override
  Future<Either<Failure, User>> loginWithFacebook() {
    return serviceLocator<LoginRemoteDataSource>().loginUserWithFacebook();
  }
}

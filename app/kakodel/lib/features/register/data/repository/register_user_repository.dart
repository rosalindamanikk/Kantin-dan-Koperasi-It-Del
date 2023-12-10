import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/register_user_repository.dart';
import '../datasource/register_remote_datasource.dart';
import '../models/user_model.dart';

class RegisterUserRepositoryImpl implements RegisterUserRepository {
  // normal register
  @override
  Future<Either<Failure, User>> register({required User user}) {
    return serviceLocator<RegisterRemoteDataSource>().registerUser(
      user: user,
    );
  }

  // google register
  @override
  Future<Either<Failure, User>> registerWithGoogle() {
    return serviceLocator<RegisterRemoteDataSource>().registerUserWithGoogle();
  }

  // facebook register
  @override
  Future<Either<Failure, User>> registerWithFacebook() {
    return serviceLocator<RegisterRemoteDataSource>()
        .registerUserWithFacebook();
  }
}

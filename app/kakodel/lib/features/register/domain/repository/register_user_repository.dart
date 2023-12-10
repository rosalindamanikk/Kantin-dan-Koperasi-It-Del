import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/user_model.dart';

abstract class RegisterUserRepository {
  Future<Either<Failure, User>> register({required User user});
  Future<Either<Failure, User>> registerWithGoogle();
  Future<Either<Failure, User>> registerWithFacebook();
}

import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/user_model.dart';

abstract class LoginUserRepository {
  Future<Either<Failure, User>> login({required User user});
  Future<Either<Failure, User>> loginWithGoogle();
  Future<Either<Failure, User>> loginWithFacebook();
}

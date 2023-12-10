import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/user_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, User>> getUserFromLocalStorage();
  Future<Either<Failure, bool>> logout();
}

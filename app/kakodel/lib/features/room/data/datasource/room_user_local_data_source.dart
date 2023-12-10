import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../../../services/user_cache_service.dart';
import '../models/user/user_model.dart';

abstract class RoomLocalUserDataSource {
  Future<Either<Failure, User>> getUserFromLocalStorage();
}

class RoomLocalUserDataSourceImlp extends RoomLocalUserDataSource {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    try {
      final user = serviceLocator<UserCacheService>().user;
      if (user != null) {
        return Right(User.fromJson(user.toJson()));
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Parsing failure occured in HomeLocalDataSourceImlp',
        ),
      );
    }
  }
}

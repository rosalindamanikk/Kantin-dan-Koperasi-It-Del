import 'package:dartz/dartz.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/profile/domain/repository/profile_repository.dart';

import '../../../../core/failure.dart';
import '../datasource/profile_user_local_data_source.dart';
import '../models/user_model.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() {
    return serviceLocator<ProfileLocalUserDataSource>()
        .getUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, bool>> logout() {
    return serviceLocator<ProfileLocalUserDataSource>().logout();
  }
}

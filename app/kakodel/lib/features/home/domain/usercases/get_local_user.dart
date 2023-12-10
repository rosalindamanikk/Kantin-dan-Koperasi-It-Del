import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/user/user_model.dart';
import '../repository/home_repository.dart';

class GetLocalUserUsecase {
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    final response =
        await serviceLocator<HomeRepository>().getUserFromLocalStorage();
    if (response.isRight()) {
      final responseUser = response.getOrElse(() => User());
      //persist user authorization in request
      serviceLocator<Request>().updateAuthorization(responseUser.token);
    }

    return response;
  }
}

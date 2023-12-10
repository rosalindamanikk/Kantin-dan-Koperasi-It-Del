import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/user/user_model.dart';
import '../repository/room_repository.dart';

class GetLocalUserUsecase {
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    final response =
        await serviceLocator<RoomRepository>().getUserFromLocalStorage();

    return response;
  }
}

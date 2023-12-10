import 'package:dartz/dartz.dart';
import 'package:delmart/core/request.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/room_detail/data/models/room_model.dart';

import '../../../../core/failure.dart';
import '../../domain/entities/request_room_entity.dart';

abstract class RoomDetailRemoteDataSource {
  Future<Either<Failure, Room>> getRoomDetailFromServer({required int roomId});
  Future<Either<Failure, String>> requestRoom(
      RequestRoomEntity requestRoomEntity);
}

class RoomDetailRemoteDataSourceImpl implements RoomDetailRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, Room>> getRoomDetailFromServer(
      {required int roomId}) async {
    try {
      final response = await request.get('/rooms/$roomId');
      if (response.statusCode == 200) {
        return Right(Room.fromJson(response.data['data']));
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, String>> requestRoom(
      RequestRoomEntity requestRoomEntity) async {
    try {
      final response = await request.post(
        '/request-rooms/store',
        data: {
          'room_id': requestRoomEntity.room.id,
          'description': requestRoomEntity.description,
          'start_date': requestRoomEntity.startDate.toIso8601String(),
          'end_date': requestRoomEntity.endDate.toIso8601String(),
        },
      );
      if (response.statusCode == 200) {
        return Right(response.data['meta']['message']);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}

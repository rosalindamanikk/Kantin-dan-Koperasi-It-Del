import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../models/user_model.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();

abstract class LoginRemoteDataSource {
  Future<Either<Failure, User>> loginUser({required User user});
  Future<Either<Failure, User>> loginUserWithGoogle();
  Future<Either<Failure, User>> loginUserWithFacebook();
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final Request request = serviceLocator<Request>();

  // normal login
  @override
  Future<Either<Failure, User>> loginUser({required User user}) async {
    try {
      final response = await request.post(
        '/auth/login',
        data: user.toJson(),
      );

      if (response.statusCode == 200) {
        request.updateAuthorization(response.data['data']['access_token']);
        var data = response.data['data']['user'];
        data['token'] = response.data['data']['access_token'];
        return Right(User.fromJson(data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in LoginRemoteDataSourceImpl'),
      );
    }
  }

  // google login
  @override
  Future<Either<Failure, User>> loginUserWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        String? accessToken = googleSignInAuthentication.accessToken;

        final response = await request.post(
          '/auth/google',
          data: {'token': accessToken},
        );
        if (response.statusCode == 200) {
          request.updateAuthorization(response.data['data']['access_token']);
          var data = response.data['data']['user'];
          data['token'] = response.data['data']['access_token'];
          return Right(User.fromJson(data));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      } else {
        return const Left(
          Exception('Exception Occured in LoginRemoteDataSourceImpl'),
        );
      }
    } catch (e) {
      return const Left(
        Exception('Exception Occured in LoginRemoteDataSourceImpl'),
      );
    }
  }

  // facebook login
  @override
  Future<Either<Failure, User>> loginUserWithFacebook() async {
    try {
      final response = await request.post(
        '/auth/facebook',
      );
      if (response.statusCode == 200) {
        request.updateAuthorization(response.data['data']['access_token']);
        var data = response.data['data']['user'];
        data['token'] = response.data['data']['access_token'];
        return Right(User.fromJson(data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in LoginRemoteDataSourceImpl'),
      );
    }
  }
}

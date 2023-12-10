import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../models/cart/cart_model.dart';
import '../../domain/entities/product_cart_entity.dart';

abstract class CartRemoteDataSource {
  Future<Either<Failure, CartList>> getCartFromServer();
  Future<Either<Failure, Cart>> increaseQuantity(
      ProductCartEntity productCartEntity);
  Future<Either<Failure, Cart>> decreaseQuantity(
      ProductCartEntity productCartEntity);
  Future<Either<Failure, Cart>> deleteFromCart(
      ProductCartEntity productCartEntity);
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  @override
  Future<Either<Failure, CartList>> getCartFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/cart');
      if (response.statusCode == 200) {
        try {
          final CartList cartList = [];
          final cartListMap = response.data['data'];
          try {
            for (var item in cartListMap) {
              cartList.add(Cart.fromJson(item));
            }
          } catch (e) {
            debugPrint('Ini error: $e');
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
          return Right(cartList);
        } catch (e) {
          debugPrint(e.toString());
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, Cart>> increaseQuantity(
      ProductCartEntity productCartEntity) async {
    try {
      final Request request = serviceLocator<Request>();
      final response =
          await request.put('/cart/increase/${productCartEntity.id}');
      if (response.statusCode == 200) {
        try {
          return Right(Cart.fromJson(response.data['data']));
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, Cart>> decreaseQuantity(
      ProductCartEntity productCartEntity) async {
    try {
      final Request request = serviceLocator<Request>();
      final response =
          await request.put('/cart/decrease/${productCartEntity.id}');
      if (response.statusCode == 200) {
        try {
          return Right(Cart.fromJson(response.data['data']));
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, Cart>> deleteFromCart(
      ProductCartEntity productCartEntity) async {
    try {
      final Request request = serviceLocator<Request>();
      final response =
          await request.delete('/cart/delete/${productCartEntity.id}');
      if (response.statusCode == 200) {
        try {
          return Right(Cart.fromJson(response.data['data']));
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}

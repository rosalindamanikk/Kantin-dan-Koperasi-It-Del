import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../data/models/products/product_model.dart';
import '../../data/models/user/user_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, User>> getUserFromLocalStorage();
  Future<Either<Failure, ProductList>> getProductsFromServer();
}

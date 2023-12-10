import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../data/models/product_model.dart';

abstract class ProductDetailRepository {
  Future<Either<Failure, Product>> getDetailProductFromServer(
      {required int productId});
  // add to cart
  Future<Either<Failure, String>> addToCart(
      {required Product product, required int quantity});
}

import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/product_model.dart';
import '../repository/product_detail_repository.dart';

class AddToCartUseCase {
  Future<Either<Failure, String>> addToCart(
      {required Product product, required int quantity}) {
    return serviceLocator<ProductDetailRepository>()
        .addToCart(product: product, quantity: quantity);
  }
}

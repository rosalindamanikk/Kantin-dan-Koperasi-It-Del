import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/service_locator.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/get_detail_product.dart';
import '../bloc/product_detail_event.dart';
import '../bloc/product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc() : super(const ProductDetailInitialState()) {
    on<GetDetailProductEvent>(
      (event, emit) async {
        emit(const ProductDetailState.loading());
        var result = await serviceLocator<GetDetailProductFromServer>()
            .getDetailProductFromServer(productId: event.productId);
        result.fold(
          (failure) {
            emit(ProductDetailState.error(failure.message));
          },
          (data) {
            emit(ProductDetailState.loaded(product: data));
          },
        );
      },
    );
    on<AddToCartEvent>(
      (event, emit) async {
        emit(const ProductDetailState.loading());
        var result = await serviceLocator<AddToCartUseCase>()
            .addToCart(product: event.product, quantity: event.quantity);
        result.fold(
          (failure) {
            emit(ProductDetailState.error(failure.message));
          },
          (data) {
            emit(ProductDetailState.addedToCart(message: data));
          },
        );
        // back to loaded state
        emit(ProductDetailState.loaded(product: event.product));
      },
    );
  }
}

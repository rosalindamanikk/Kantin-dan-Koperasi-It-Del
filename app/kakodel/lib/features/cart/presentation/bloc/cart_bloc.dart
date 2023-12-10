import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/decrease_quantity.dart';
import '../../domain/usecases/delete_from_cart.dart';
import '../../domain/usecases/get_cart.dart';
import '../../domain/usecases/increase_quantity.dart';
import '../bloc/cart_event.dart';
import '../bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartInitialState()) {
    on<GetCartEvent>(
      (event, emit) async {
        emit(const CartState.loading());
        var result =
            await serviceLocator<GetCartFromServer>().getCartFromServer();
        result.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {
            var totalPrice =
                serviceLocator<GetCartFromServer>().getTotalPrice(data);
            emit(CartState.loaded(cartList: data, totalPrice: totalPrice));
          },
        );
      },
    );
    on<IncreaseQuantityEvent>(
      (event, emit) async {
        var result = await serviceLocator<IncreaseQuantity>()
            .increaseQuantity(event.productCartEntity);
        result.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {},
        );
        var cartResult =
            await serviceLocator<GetCartFromServer>().getCartFromServer();
        cartResult.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {
            var totalPrice =
                serviceLocator<GetCartFromServer>().getTotalPrice(data);
            emit(CartState.loaded(cartList: data, totalPrice: totalPrice));
          },
        );
      },
    );
    on<DecreaseQuantityEvent>(
      (event, emit) async {
        var result = await serviceLocator<DecreaseQuantity>()
            .decreaseQuantity(event.productCartEntity);
        result.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {},
        );
        var cartResult =
            await serviceLocator<GetCartFromServer>().getCartFromServer();
        cartResult.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {
            var totalPrice =
                serviceLocator<GetCartFromServer>().getTotalPrice(data);
            emit(CartState.loaded(cartList: data, totalPrice: totalPrice));
          },
        );
      },
    );
    on<DeleteFromCartEvent>(
      (event, emit) async {
        var result = await serviceLocator<DeleteFromCart>()
            .deleteFromCart(event.productCartEntity);
        result.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {},
        );
        var cartResult =
            await serviceLocator<GetCartFromServer>().getCartFromServer();
        cartResult.fold(
          (failure) {
            emit(CartState.error(failure.message));
          },
          (data) {
            var totalPrice =
                serviceLocator<GetCartFromServer>().getTotalPrice(data);
            emit(CartState.loaded(cartList: data, totalPrice: totalPrice));
          },
        );
      },
    );
  }
}

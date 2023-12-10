import 'package:delmart/features/checkout/presentation/bloc/checkout_event.dart';
import 'package:delmart/features/checkout/presentation/bloc/checkout_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/checkout_usecase.dart';
import '../../domain/usecases/get_cart.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const CheckoutInitialState()) {
    on<GetCartEvent>((event, emit) async {
      emit(const CheckoutLoadingState());
      try {
        var result =
            await serviceLocator<GetCartFromServer>().getCartFromServer();
        result.fold(
          (failure) {
            emit(CheckoutState.error(failure.message));
          },
          (data) {
            var totalPrice =
                serviceLocator<GetCartFromServer>().getTotalPrice(data);
            emit(CheckoutState.loaded(cartList: data, totalPrice: totalPrice));
          },
        );
      } catch (e) {
        emit(CheckoutErrorState(e.toString()));
      }
    });
    on<CheckoutCartEvent>((event, emit) async {
      emit(const CheckoutLoadingState());
      try {
        var result = await serviceLocator<CheckoutUseCase>()
            .checkout(event.paymentMethod);
        result.fold(
          (failure) {
            emit(CheckoutState.error(failure.message));
          },
          (data) {
            emit(CheckoutState.checkoutSuccess(
              order: data,
            ));
          },
        );
      } catch (e) {
        emit(CheckoutErrorState(e.toString()));
      }
    });
  }
}

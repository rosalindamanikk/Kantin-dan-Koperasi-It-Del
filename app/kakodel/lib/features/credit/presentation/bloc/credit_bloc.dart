import 'package:delmart/features/credit/domain/usecases/checkout_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/get_credits.dart';
import 'credit_event.dart';
import 'credit_state.dart';

class CreditBloc extends Bloc<CreditEvent, CreditState> {
  CreditBloc() : super(const CreditInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        emit(const CreditState.loading());
        if (event.provider.length >= 4) {
          var result = await serviceLocator<GetCreditsFromServer>()
              .getCreditsFromServer(event.provider);
          result.fold(
            (failure) {
              emit(CreditState.error(failure.message));
            },
            (data) {
              emit(CreditState.loaded(creditList: data));
            },
          );
        } else {
          emit(const CreditInitialState());
        }
      },
    );
    on<CreditCheckoutEvent>(
      (event, emit) async {
        emit(const CreditState.loading());
        var result = await serviceLocator<CreditCheckoutUseCase>()
            .checkout(event.credit, event.paymentMethod);
        result.fold(
          (failure) {
            emit(CreditState.error(failure.message));
          },
          (data) {
            emit(CreditState.checkout(order: data));
          },
        );
      },
    );
  }
}

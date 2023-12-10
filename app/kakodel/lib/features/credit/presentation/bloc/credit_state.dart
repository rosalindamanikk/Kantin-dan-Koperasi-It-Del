import 'package:delmart/features/credit/data/models/order/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/credit/credit_model.dart';

part 'credit_state.freezed.dart';

@freezed
abstract class CreditState with _$CreditState {
  const factory CreditState.initial() = CreditInitialState;
  const factory CreditState.loading() = CreditLoadingState;
  const factory CreditState.error(String message) = CreditErrorState;
  const factory CreditState.loaded({
    required CreditList creditList,
  }) = CreditLoadedState;
  const factory CreditState.checkout({
    required OrderModel order,
  }) = CreditCheckoutSuccessState;
}

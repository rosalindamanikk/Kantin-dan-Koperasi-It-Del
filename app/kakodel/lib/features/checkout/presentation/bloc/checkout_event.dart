import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkout_event.freezed.dart';

@freezed
abstract class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.getCart() = GetCartEvent;
  const factory CheckoutEvent.checkout({required String paymentMethod}) =
      CheckoutCartEvent;
}

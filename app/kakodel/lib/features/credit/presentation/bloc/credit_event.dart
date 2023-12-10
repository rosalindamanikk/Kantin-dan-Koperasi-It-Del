import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/credit/credit_model.dart';
part 'credit_event.freezed.dart';

@freezed
class CreditEvent with _$CreditEvent {
  const factory CreditEvent.getData(String provider) = GetDataEvent;
  const factory CreditEvent.checkout(Credit credit, String paymentMethod) =
      CreditCheckoutEvent;
}

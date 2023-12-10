import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/products/product_model.dart';
import '../../data/models/user/user_model.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.error(String message) = HomeErrorState;
  const factory HomeState.loadedState({
    required ProductList productList,
    required User user,
  }) = HomeLoadedState;
}

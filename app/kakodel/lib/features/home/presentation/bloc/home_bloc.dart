import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../data/models/user/user_model.dart';
import '../../domain/usercases/get_local_user.dart';
import '../../domain/usercases/get_products.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var userResult = await serviceLocator<GetLocalUserUsecase>()
            .getUserFromLocalStorage();

        var result = await serviceLocator<GetProductsFromServer>()
            .getProductsFromServer();
        result.fold(
          (failure) {
            emit(HomeState.error(failure.message));
          },
          (data) {
            emit(
              HomeState.loadedState(
                productList: data,
                user: userResult.getOrElse(
                  () => User(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

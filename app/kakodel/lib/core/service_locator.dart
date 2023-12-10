import 'package:delmart/features/credit/domain/usecases/checkout_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/cart/data/datasource/cart_remote_source.dart';
import '../features/cart/data/repository/cart_repository.dart';
import '../features/cart/domain/repository/cart_repository.dart';
import '../features/cart/domain/usecases/decrease_quantity.dart';
import '../features/cart/domain/usecases/delete_from_cart.dart';
import '../features/cart/domain/usecases/get_cart.dart' as cart;
import '../features/cart/domain/usecases/increase_quantity.dart';
import '../features/checkout/data/datasource/checkout_remote_source.dart';
import '../features/checkout/data/repository/checkout_repository.dart';
import '../features/checkout/domain/repository/checkout_repository.dart';
import '../features/checkout/domain/usecases/checkout_usecase.dart';
import '../features/checkout/domain/usecases/get_cart.dart' as checkout;
import '../features/credit/data/datasource/credit_remote_source.dart';
import '../features/credit/data/repository/credit_repository.dart';
import '../features/credit/domain/repository/credit_repository.dart';
import '../features/credit/domain/usecases/get_credits.dart';
import '../features/home/data/datasource/home_product_remote_source.dart'
    as home;
import '../features/home/data/datasource/home_user_local_data_source.dart';
import '../features/home/data/repository/home_repository.dart';
import '../features/home/domain/repository/home_repository.dart';
import '../features/home/domain/usercases/get_local_user.dart' as home;
import '../features/home/domain/usercases/get_products.dart' as home;
import '../features/login/data/datasource/login_remote_datasource.dart';
import '../features/login/data/repository/login_user_repository.dart';
import '../features/login/domain/repository/login_user_repository.dart';
import '../features/login/domain/usecases/login_usecase.dart';
import '../features/order/data/datasource/order_remote_source.dart';
import '../features/order/data/repository/order_repository.dart';
import '../features/order/domain/repository/order_repository.dart';
import '../features/order/domain/usecases/cancel_order_usecase.dart';
import '../features/order/domain/usecases/get_order.dart' as order;
import '../features/product_detail/data/datasource/product_detail_remote_source.dart';
import '../features/product_detail/data/repository/product_detail_repository.dart';
import '../features/product_detail/domain/repository/product_detail_repository.dart';
import '../features/product_detail/domain/usecases/add_to_cart.dart';
import '../features/product_detail/domain/usecases/get_detail_product.dart';
import '../features/profile/data/datasource/profile_user_local_data_source.dart';
import '../features/profile/data/repository/profile_repository.dart';
import '../features/profile/domain/repository/profile_repository.dart';
import '../features/profile/domain/usecases/get_local_user.dart' as profile;
import '../features/register/data/datasource/register_remote_datasource.dart';
import '../features/register/data/repository/register_user_repository.dart';
import '../features/register/domain/repository/register_user_repository.dart';
import '../features/register/domain/usecases/register_usecase.dart';
import '../features/request_room/data/datasource/request_room_remote_source.dart';
import '../features/request_room/data/repository/request_room_repository.dart';
import '../features/request_room/domain/repository/request_room_repository.dart';
import '../features/request_room/domain/usecases/cancel_request.dart';
import '../features/request_room/domain/usecases/get_request_room.dart';
import '../features/room/data/datasource/room_remote_source.dart';
import '../features/room/data/datasource/room_user_local_data_source.dart';
import '../features/room/data/repository/room_repository.dart';
import '../features/room/domain/repository/room_repository.dart';
import '../features/room/domain/usecases/get_local_user.dart' as room;
import '../features/room/domain/usecases/get_rooms.dart';
import '../features/room_detail/data/datasource/room_detail_remote_source.dart';
import '../features/room_detail/data/repository/room_detail_repository.dart';
import '../features/room_detail/domain/repository/room_detail_repository.dart';
import '../features/room_detail/domain/usecases/get_detail_room.dart';
import '../features/room_detail/domain/usecases/request_room.dart';
import '../features/splash/domain/usecase/check_user_login_status.dart';
import '../services/user_cache_service.dart';
import 'request.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  //check if user logged in or not
  serviceLocator.registerFactory<CheckUserLoginStatus>(
    () => CheckUserLoginStatusImpl(),
  );
  //usecase
  serviceLocator.registerFactory<LoginUserUsecase>(() => LoginUserUsecase());

  //datasource
  serviceLocator.registerFactory<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl());

  // repositories
  serviceLocator
      .registerFactory<LoginUserRepository>(() => LoginUserRepositoryImpl());

//register user
  //usecase
  serviceLocator
      .registerFactory<RegisterUserUsecase>(() => RegisterUserUsecase());

  // datasource
  serviceLocator.registerFactory<RegisterRemoteDataSource>(
      () => RegisterRemoteDataSourceImpl());

  // repositories
  serviceLocator.registerFactory<RegisterUserRepository>(
      () => RegisterUserRepositoryImpl());

//home user
// usecase
  serviceLocator.registerFactory<home.GetLocalUserUsecase>(
      () => home.GetLocalUserUsecase());

  // datasource
  serviceLocator.registerFactory<HomeLocalUserDataSource>(
      () => HomeLocalUserDataSourceImlp());
// home products
// usecase
  serviceLocator.registerFactory<home.GetProductsFromServer>(
      () => home.GetProductsFromServer());

  // datasource
  serviceLocator.registerFactory<home.ProductsRemoteDataSource>(
      () => home.ProductsRemoteDataSourceImpl());

// repositories
  serviceLocator.registerFactory<HomeRepository>(() => HomeRepositoryImpl());

// detail product
// usecase
  serviceLocator.registerFactory<GetDetailProductFromServer>(
      () => GetDetailProductFromServer());
  serviceLocator.registerFactory<AddToCartUseCase>(() => AddToCartUseCase());

// datasource
  serviceLocator.registerFactory<DetailProductRemoteDataSource>(
      () => DetailProductRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<ProductDetailRepository>(
      () => ProductDetailRepositoryImpl());

// credit
// usecase
  serviceLocator
      .registerFactory<GetCreditsFromServer>(() => GetCreditsFromServer());
  serviceLocator
      .registerFactory<CreditCheckoutUseCase>(() => CreditCheckoutUseCase());
      
// datasource
  serviceLocator.registerFactory<CreditsRemoteDataSource>(
      () => CreditsRemoteDataSourceImpl());
// repositories
  serviceLocator
      .registerFactory<CreditRepository>(() => CreditRepositoryImpl());

// room
// room user
// usecase
  serviceLocator.registerFactory<room.GetLocalUserUsecase>(
      () => room.GetLocalUserUsecase());
  serviceLocator
      .registerFactory<GetRoomsFromServer>(() => GetRoomsFromServer());

  // datasource
  serviceLocator.registerFactory<RoomLocalUserDataSource>(
      () => RoomLocalUserDataSourceImlp());
  serviceLocator
      .registerFactory<RoomRemoteDataSource>(() => RoomRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<RoomRepository>(() => RoomRepositoryImpl());

// room detail
// usecase
  serviceLocator.registerFactory<GetRoomDetailFromServer>(
      () => GetRoomDetailFromServer());
  serviceLocator
      .registerFactory<RequestRoomUseCase>(() => RequestRoomUseCase());

// datasource
  serviceLocator.registerFactory<RoomDetailRemoteDataSource>(
      () => RoomDetailRemoteDataSourceImpl());

// repositories
  serviceLocator
      .registerFactory<RoomDetailRepository>(() => RoomDetailRepositoryImpl());
// cart
// usecase
  serviceLocator
      .registerFactory<cart.GetCartFromServer>(() => cart.GetCartFromServer());
  serviceLocator.registerFactory<IncreaseQuantity>(() => IncreaseQuantity());
  serviceLocator.registerFactory<DecreaseQuantity>(() => DecreaseQuantity());
  serviceLocator.registerFactory<DeleteFromCart>(() => DeleteFromCart());
// datasource
  serviceLocator
      .registerFactory<CartRemoteDataSource>(() => CartRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<CartRepository>(() => CartRepositoryImpl());

// checkout
// usecase
  serviceLocator.registerFactory<checkout.GetCartFromServer>(
      () => checkout.GetCartFromServer());
  serviceLocator.registerFactory<CheckoutUseCase>(() => CheckoutUseCase());
// datasource
  serviceLocator.registerFactory<CheckoutRemoteDataSource>(
      () => CheckoutRemoteDataSourceImpl());
// repositories
  serviceLocator
      .registerFactory<CheckoutRepository>(() => CheckoutRepositoryImpl());

// order
// usecase
  serviceLocator.registerFactory<order.GetOrdersFromServer>(
      () => order.GetOrdersFromServer());
  serviceLocator
      .registerFactory<CancelOrderUseCase>(() => CancelOrderUseCase());

// datasource
  serviceLocator.registerFactory<OrderRemoteDataSource>(
      () => OrderRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<OrderRepository>(() => OrderRepositoryImpl());
// profile
// usecase
  serviceLocator.registerFactory<profile.GetLocalUserUsecase>(
      () => profile.GetLocalUserUsecase());
// datasource
  serviceLocator.registerFactory<ProfileLocalUserDataSource>(
      () => ProfileLocalUserDataSourceImlp());
// repositories
  serviceLocator
      .registerFactory<ProfileRepository>(() => ProfileRepositoryImpl());

// request room
// usecase
  serviceLocator.registerFactory<GetRequestRoomsFromServer>(
      () => GetRequestRoomsFromServer());
  serviceLocator
      .registerFactory<CancelRequestUseCase>(() => CancelRequestUseCase());
// datasource
  serviceLocator.registerFactory<RequestRoomRemoteDataSource>(
      () => RequestRoomRemoteDataSourceImpl());

// repositories
  serviceLocator.registerFactory<RequestRoomRepository>(
      () => RequestRoomRepositoryImpl());

  // services
  serviceLocator.registerSingleton<UserCacheService>(UserCacheService());
  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  // request
  serviceLocator.registerSingleton<Request>(Request());
}

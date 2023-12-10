import 'package:auto_route/auto_route.dart';
import 'package:delmart/features/checkout/presentation/screens/checkout_screen.dart';
import 'package:delmart/features/checkout/presentation/screens/checkout_success_screen.dart';
import 'package:delmart/features/credit/presentation/screens/credit_checkout_screen.dart';
import 'package:delmart/features/credit/presentation/screens/credit_checkout_success_screen.dart';
import 'package:delmart/features/credit/presentation/screens/credit_screen.dart';
import 'package:delmart/features/order/presentation/screens/order_screen.dart';
import 'package:delmart/features/profile/presentation/screens/profile_screen.dart';
import 'package:delmart/features/request_room/presentation/screens/request_room_screen.dart';
import 'package:delmart/features/room/presentation/screens/room_screen.dart';
import 'package:delmart/features/room_detail/presentation/screens/room_detail_screen.dart';

import '../features/cart/presentation/screens/cart_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/login/presentation/screens/login_screen.dart';
import '../features/product_detail/presentation/screens/product_detail_screen.dart';
import '../features/register/presentation/screens/register_screen.dart';
import '../features/splash/presentation/splash_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute<bool>(page: SplashScreen, initial: true),
    AutoRoute<bool>(page: LoginScreen, path: LoginScreen.routeName),
    AutoRoute<bool>(page: RegisterScreen, path: RegisterScreen.routeName),
    AutoRoute<bool>(page: HomeScreen, path: HomeScreen.routeName),
    AutoRoute<bool>(
      page: ProductDetailScreen,
      path: ProductDetailScreen.routeName,
    ),
    AutoRoute<bool>(page: CreditScreen, path: CreditScreen.routeName),
    AutoRoute<bool>(
        page: CreditCheckoutScreen, path: CreditCheckoutScreen.routeName),
    AutoRoute<bool>(
        page: CreditCheckoutSuccessScreen,
        path: CreditCheckoutSuccessScreen.routeName),
    AutoRoute<bool>(page: RoomScreen, path: RoomScreen.routeName),
    AutoRoute<bool>(page: RoomDetailScreen, path: RoomDetailScreen.routeName),
    AutoRoute<bool>(page: CartScreen, path: CartScreen.routeName),
    AutoRoute<bool>(page: CheckoutScreen, path: CheckoutScreen.routeName),
    AutoRoute<bool>(
        page: CheckoutSuccessScreen, path: CheckoutSuccessScreen.routeName),
    AutoRoute<bool>(page: ProfileScreen, path: ProfileScreen.routeName),
    AutoRoute<bool>(page: OrderScreen, path: OrderScreen.routeName),
    AutoRoute<bool>(page: RequestRoomScreen, path: RequestRoomScreen.routeName),
  ],
  replaceInRouteName: 'Page,Route',
)
class $FlutterRouter {}

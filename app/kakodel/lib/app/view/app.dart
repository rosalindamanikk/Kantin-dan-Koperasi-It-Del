import 'package:delmart/features/credit/presentation/bloc/credit_bloc.dart';
import 'package:delmart/features/order/presentation/bloc/order_bloc.dart';
import 'package:delmart/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:delmart/features/request_room/presentation/bloc/request_room_bloc.dart';
import 'package:delmart/features/room/presentation/bloc/room_bloc.dart';
import 'package:delmart/features/room_detail/presentation/bloc/room_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../features/cart/presentation/bloc/cart_bloc.dart';
import '../../features/checkout/presentation/bloc/checkout_bloc.dart';
import '../../features/home/presentation/bloc/home_bloc.dart';
import '../../features/login/presentation/bloc/login_bloc.dart';
import '../../features/product_detail/presentation/bloc/product_detail_bloc.dart';
import '../../features/register/presentation/bloc/register_bloc.dart';
import '../../routes/app_routers.gr.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final appRouter = FlutterRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
        BlocProvider(
          create: (_) => RegisterBloc(),
        ),
        BlocProvider(
          create: (_) => HomeBloc(),
        ),
        BlocProvider(
          create: (_) => ProductDetailBloc(),
        ),
        BlocProvider(create: (_) => CreditBloc()),
        BlocProvider(create: (_) => RoomBloc()),
        BlocProvider(create: (_) => RoomDetailBloc()),
        BlocProvider(create: (_) => CartBloc()),
        BlocProvider(create: (_) => CheckoutBloc()),
        BlocProvider(create: (_) => ProfileBloc()),
        BlocProvider(create: (_) => OrderBloc()),
        BlocProvider(create: (_) => RequestRoomBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Delmart',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        ),
        builder: EasyLoading.init(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          ),
        ),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}

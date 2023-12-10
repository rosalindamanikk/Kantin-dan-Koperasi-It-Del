import 'dart:core';
import 'package:delmart/features/navigation/presentation/screens/bottom_navigation_bar_screen.dart';

import './product_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:delmart/features/home/presentation/bloc/home_bloc.dart';
import 'package:delmart/features/home/presentation/bloc/home_event.dart';
import 'package:delmart/features/home/presentation/bloc/home_state.dart';
import 'package:flutter/material.dart';
import '../../../../../shared/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// this is the home Screen
class _HomeScreenState extends State<HomeScreen> {
  String greeting = '';
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(
          const GetDataEvent(),
        );
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = 'Selamat Pagi';
    } else if (hour < 17) {
      greeting = 'Selamat Siang';
    } else if (hour < 20) {
      greeting = 'Selamat Malam';
    } else {
      greeting = 'Selamat Malam';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is HomeErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "There was an error loading the data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is HomeLoadedState) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Halo, ${state.user.name}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  greeting,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            // icon notification bell with how many notifications
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                const FaIcon(FontAwesomeIcons.bell).icon,
                                color: Colors.black,
                              ),
                            ),
                            // profile picture
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/blank.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // search bar
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 300,
                              height: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Cari Produk',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // filter button
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              child: const Icon(
                                Icons.filter_list,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          'Semua Produk',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // listview item
                      state.productList.isNotEmpty
                          ? ProductItem(
                              productList: state.productList,
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.shopping_cart,
                                    size: 100,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Tidak ada produk tersedia',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: dark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: const NavigationBarScreen(),
            );
          } else {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Loading",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: dark,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

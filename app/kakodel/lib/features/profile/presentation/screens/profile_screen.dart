import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../../../navigation/presentation/screens/bottom_navigation_bar_screen.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';
import '../shared/card_item_menu.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(
          const GetUserFromLocalStorageEvent(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state is ProfileErrorState) {
              EasyLoading.showError(state.message);
            } else if (state is ProfileLogoutState) {
              AutoRouter.of(context).replace(const LoginScreen());
            }
          },
          builder: (context, state) {
            if (state is ProfileLoadedState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        // set background color F3F6FB
                        Container(
                          height: MediaQuery.of(context).size.height,
                          color: const Color(0xFFF3F6FB),
                        ),
                        const SizedBox(
                          child: Image(
                            image: AssetImage('assets/images/wave1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  // circle avatar image and pencil icon
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            width: 130,
                                            height: 130,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: const CircleAvatar(
                                              radius: 50,
                                              backgroundImage: AssetImage(
                                                'assets/images/blank.png',
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                gradient: gradient,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                  color: white,
                                                  width: 2,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.edit,
                                                color: white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    state.user.name,
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    state.user.email,
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                children: [
                                  // list menu
                                  // account info
                                  const CardItemMenu(
                                    icon: Icons.person,
                                    title: 'Informasi Akun',
                                  ),
                                  // my orders
                                  CardItemMenu(
                                    onTap: () {
                                      AutoRouter.of(context).push(
                                        const OrderScreen(),
                                      );
                                    },
                                    icon: Icons.shopping_cart,
                                    title: 'Pesanan Saya',
                                  ),
                                  // my requests
                                  CardItemMenu(
                                    onTap: () {
                                      AutoRouter.of(context).push(
                                        const RequestRoomScreen(),
                                      );
                                    },
                                    icon: Icons.bookmark,
                                    title: 'Pesanan Ruangan',
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                children: const [
                                  // list menu
                                  // settings
                                  CardItemMenu(
                                    icon: Icons.settings,
                                    title: 'Pengaturan',
                                  ),
                                  // help center
                                  CardItemMenu(
                                    icon: Icons.help,
                                    title: 'Pusat Bantuan',
                                  ),
                                  // contact us
                                  CardItemMenu(
                                    icon: Icons.phone,
                                    title: 'Hubungi Kami',
                                  ),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                children: [
                                  // list menu
                                  // logout
                                  CardItemMenu(
                                    onTap: _logout,
                                    icon: Icons.logout,
                                    title: 'Keluar',
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            } else if (state is ProfileErrorState) {
              return Center(
                child: Text(
                  "There was an error loading the data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              );
            } else {
              // show easy loading
              return FutureBuilder(
                future: Future.delayed(const Duration(seconds: 2)),
                builder: (context, snapshot) {
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
                },
              );
            }
          },
        ),
        bottomNavigationBar: const NavigationBarScreen(),
      ),
    );
  }

  void _logout() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Keluar'),
          content: const Text('Apakah anda yakin ingin keluar?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                context.read<ProfileBloc>().add(const LogoutEvent());
              },
              child: const Text('Ya'),
            ),
          ],
        );
      },
    );
  }
}

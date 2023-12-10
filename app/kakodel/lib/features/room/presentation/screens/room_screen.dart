import 'package:delmart/features/room/presentation/bloc/room_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/theme.dart';
import '../../../navigation/presentation/screens/bottom_navigation_bar_screen.dart';
import '../bloc/room_bloc.dart';
import '../bloc/room_event.dart';
import 'room_item.dart';

class RoomScreen extends StatefulWidget {
  static const routeName = '/room';
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  String greeting = '';
  @override
  void initState() {
    super.initState();
    context.read<RoomBloc>().add(
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
      child: BlocConsumer<RoomBloc, RoomState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is RoomErrorState) {
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
          } else if (state is RoomLoadedState) {
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 50,
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
                                'Cari Ruangan',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          'Daftar Ruangan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // gridview item
                      state.roomList.isNotEmpty
                          ? RoomItem(
                              roomList: state.roomList,
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.no_meeting_room,
                                    size: 100,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Tidak ada ruangan tersedia',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: dark,
                                    ),
                                  ),
                                ],
                              ),
                            )
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

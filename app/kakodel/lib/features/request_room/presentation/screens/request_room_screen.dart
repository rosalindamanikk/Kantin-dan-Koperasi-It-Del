import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../bloc/request_room_bloc.dart';
import '../bloc/request_room_event.dart';
import '../bloc/request_room_state.dart';
import 'request_item.dart';

const List<String> status = [
  'Semua Pesanan',
  'Pending',
  'Ditolak',
  'Diterima',
  'Selesai',
  'Dibatalkan',
];

class RequestRoomScreen extends StatefulWidget {
  static const String routeName = '/request-room';
  const RequestRoomScreen({super.key});

  @override
  State<RequestRoomScreen> createState() => _RequestRoomScreenState();
}

class _RequestRoomScreenState extends State<RequestRoomScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RequestRoomBloc>().add(
          const GetRequestRoomsEvent(''),
        );
  }

  @override
  Widget build(BuildContext context) {
    String statusValue = status.first;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FB),
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          title: Text(
            'My Requests',
            style: TextStyle(
              color: dark,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: dark,
            ),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<RequestRoomBloc>().add(
                    const GetRequestRoomsEvent(''),
                  );
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        // filter
                        // dropdown status
                        Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: statusValue,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: dark,
                              ),
                              iconSize: 24,
                              elevation: 16,
                              onChanged: (String? newValue) {
                                setState(() {
                                  statusValue = newValue!;
                                  context.read<RequestRoomBloc>().add(
                                        GetRequestRoomsEvent(statusValue),
                                      );
                                });
                              },
                              items: status.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 200,
                    child: BlocConsumer<RequestRoomBloc, RequestRoomState>(
                        listener: (context, state) {
                      if (state is RequestRoomErrorState) {
                        EasyLoading.showError(state.message);
                      } else if (state is RequestRoomCancelledState) {
                        EasyLoading.showSuccess(state.message);
                      }
                    }, builder: (context, state) {
                      if (state is RequestRoomErrorState) {
                        return Center(
                          child: Text(
                            "Ada kesalahan dalam memuat data",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: dark,
                            ),
                          ),
                        );
                      } else if (state is RequestRoomLoadedState) {
                        return state.requestRoomList.isEmpty
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.bookmark_border,
                                      size: 100,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Tidak ada peminjaman',
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
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: state.requestRoomList.length,
                                itemBuilder: (context, index) {
                                  return RequestItem(
                                    status: statusValue,
                                    requestRoom: state.requestRoomList[index],
                                  );
                                },
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
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

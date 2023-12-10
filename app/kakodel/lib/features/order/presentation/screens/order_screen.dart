import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../bloc/order_bloc.dart';
import '../bloc/order_event.dart';
import '../bloc/order_state.dart';
import 'order_item.dart';

const List<String> status = [
  'Semua Pesanan',
  'Pending',
  'Dalam Proses',
  'Selesai',
  'Dibatalkan',
  'Ditolak',
];

class OrderScreen extends StatefulWidget {
  static const String routeName = '/order';
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String statusValue = status.first;

  @override
  void initState() {
    super.initState();
    context.read<OrderBloc>().add(
          const GetOrdersEvent(''),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFF3F6FB),
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Text(
          'Pesanan Saya',
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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<OrderBloc>().add(
                  GetOrdersEvent(statusValue),
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
                                context.read<OrderBloc>().add(
                                      GetOrdersEvent(statusValue),
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
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    if (state is OrderErrorState) {
                      EasyLoading.showError(state.message);
                    } else if (state is OrderCancelledState) {
                      EasyLoading.showSuccess(state.message);
                    }
                  },
                  builder: (context, state) {
                    if (state is OrderErrorState) {
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
                    } else if (state is OrderLoadedState) {
                      return state.orders.isEmpty
                          ? Center(
                              child: Text(
                                "Tidak ada order tersedia",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: dark,
                                ),
                              ),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: state.orders.length,
                              itemBuilder: (context, index) {
                                return OrderItem(state.orders[index]);
                              },
                            );
                    } else {
                      // show easy loading
                      return FutureBuilder(
                        future: Future.delayed(const Duration(seconds: 2)),
                        builder: (context, snapshot) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircularProgressIndicator(),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Loading...",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: dark,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

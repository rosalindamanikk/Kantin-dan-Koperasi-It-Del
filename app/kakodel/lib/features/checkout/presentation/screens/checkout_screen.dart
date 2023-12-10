import 'package:auto_route/auto_route.dart';
import 'package:delmart/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../shared/theme.dart';
import '../bloc/checkout_bloc.dart';
import '../bloc/checkout_event.dart';
import '../bloc/checkout_state.dart';
import '../shared/custom_filled_button.dart';
import 'checkout_item.dart';

const List<String> _paymentMethods = [
  'Bayar di Tempat',
  'Kartu Kredit',
  'Kartu Debit',
  'Mobile Banking',
];

class CheckoutScreen extends StatefulWidget {
  static const String routeName = '/checkout';
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  double deliveryCharge = 10000;
  double totalAmount = 0;
  String _selectedPaymentMethod = '';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CheckoutBloc>(context).add(const GetCartEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          if (state is CheckoutSuccessState) {
            AutoRouter.of(context).push(
              CheckoutSuccessScreen(
                order: state.order,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is CheckoutErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Ada kesalahan dalam memuat data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is CheckoutLoadedState) {
            return Scaffold(
              backgroundColor: const Color(0xFFF3F6FB),
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Text(
                  'Pembayaran',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                      top: 20,
                      bottom: MediaQuery.of(context).size.height * 0.1),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.cartList.length,
                        itemBuilder: (context, index) {
                          return CheckoutItem(cart: state.cartList[index]);
                        },
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Detail Pesanan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              color: Colors.grey.withOpacity(0.2),
                              thickness: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Subtotal',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rp. ${state.totalPrice}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Biaya Pengiriman',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rp. $deliveryCharge',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rp. ${state.totalPrice + deliveryCharge}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // payment method
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Metode Pembayaran',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // divider
                            Divider(
                              color: Colors.grey.withOpacity(0.2),
                              thickness: 2,
                            ),
                            // List of payment method
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: _paymentMethods.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedPaymentMethod =
                                          _paymentMethods[index];
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _paymentMethods[index],
                                        style: TextStyle(
                                          color: dark,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Radio(
                                        value: _paymentMethods[index],
                                        groupValue: _selectedPaymentMethod,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedPaymentMethod = value!;
                                          });
                                        },
                                        activeColor: orange,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              bottomSheet: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: Rp. ${state.totalPrice + deliveryCharge}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomFilledButton(
                      text: 'Buat Pesanan',
                      onPressed: () {
                        if (_selectedPaymentMethod.isEmpty) {
                          EasyLoading.showError('Pilih metode pembayaran anda');
                        } else {
                          context.read<CheckoutBloc>().add(CheckoutCartEvent(
                              paymentMethod: _selectedPaymentMethod));
                        }
                      },
                      width: 150,
                      gradient: gradient,
                    ),
                  ],
                ),
              ),
            );
          } else {
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
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../../domain/entities/product_cart_entity.dart';
import '../bloc/cart_event.dart';
import '../bloc/cart_state.dart';
import '../shared/custom_button.dart';
import '../shared/custom_filled_button.dart';
import '../bloc/cart_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  static const String routeName = '/cart';
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double total = 0;
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const GetCartEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state is CartErrorState) {
            EasyLoading.showError(state.message);
          }
        },
        builder: (context, state) {
          if (state is CartErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Ada kesalahan pengambilan data",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is CartLoadedState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  'Keranjang',
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
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: state.cartList.isEmpty
                      ? Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shopping_cart_outlined,
                                size: 100,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Keranjang Anda Kosong',
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
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.cartList.length,
                          itemBuilder: (context, index) {
                            ProductCartEntity product = ProductCartEntity(
                                id: state.cartList[index].id,
                                product: state.cartList[index].product,
                                quantity: state.cartList[index].quantity);
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey.withOpacity(0.2),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              product.product.image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      width:
                                          MediaQuery.of(context).size.width *
                                              0.5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // product name
                                          Column(
                                            children: [
                                              Text(
                                                product.product.name,
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          // product category
                                          Text(
                                            product.product.category,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            'Rp. ${product.price}',
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                // delete button
                                                CustomButton(
                                                  onPressed: () {
                                                    deleteProduct(
                                                        product, context);
                                                  },
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                    border: Border.all(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                    ),
                                                  ),
                                                  child: const Icon(
                                                    Icons.delete,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Row(
                                                  children: [
                                                    CustomButton(
                                                      onPressed: () {
                                                        decreaseQuantity(
                                                            product,
                                                            context);
                                                      },
                                                      width: 30,
                                                      height: 30,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5),
                                                        border: Border.all(
                                                          color: Colors.grey
                                                              .withOpacity(
                                                                  0.2),
                                                        ),
                                                      ),
                                                      child: const Icon(
                                                        Icons.remove,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets
                                                                  .only(
                                                              left: 10,
                                                              right: 10),
                                                      child: Text(
                                                        product.quantity
                                                            .toString(),
                                                        style:
                                                            const TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomButton(
                                                      onPressed: () {
                                                        increaseQuantity(
                                                            product,
                                                            context);
                                                      },
                                                      width: 30,
                                                      height: 30,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5),
                                                        border: Border.all(
                                                          color: Colors.grey
                                                              .withOpacity(
                                                                  0.2),
                                                        ),
                                                      ),
                                                      child: const Icon(
                                                        Icons.add,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
              bottomSheet: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                          'Rp. ${state.totalPrice}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    state.cartList.isNotEmpty
                        ? Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: CustomFilledButton(
                              onPressed: () {
                                AutoRouter.of(context)
                                    .push(const CheckoutScreen());
                              },
                              gradient: gradient,
                              text: 'Pesan',
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
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
                );
              },
            );
          }
        },
      ),
    );
  }

  void increaseQuantity(ProductCartEntity product, BuildContext context) {
    product.quantity++;
    context.read<CartBloc>().add(
          IncreaseQuantityEvent(productCartEntity: product),
        );
  }

  void decreaseQuantity(ProductCartEntity product, BuildContext context) {
    product.quantity--;
    context.read<CartBloc>().add(
          DecreaseQuantityEvent(productCartEntity: product),
        );
  }

  void deleteProduct(ProductCartEntity product, BuildContext context) {
    //show dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Product'),
          content: const Text('Are you sure want to delete this product?'),
          actions: [
            TextButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.read<CartBloc>().add(
                      DeleteFromCartEvent(productCartEntity: product),
                    );
                AutoRouter.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}

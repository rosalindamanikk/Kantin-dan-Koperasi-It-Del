import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../../shared/theme.dart';
import '../shared/custom_filled_button.dart';
import '../bloc/product_detail_bloc.dart';
import '../bloc/product_detail_event.dart';
import '../bloc/product_detail_state.dart';
import '../../data/models/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  final int productId;
  static const String routeName = '/product-detail';
  const ProductDetailScreen({super.key, required this.productId});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;
  @override
  void initState() {
    super.initState();
    context
        .read<ProductDetailBloc>()
        .add(GetDetailProductEvent(productId: widget.productId));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<ProductDetailBloc, ProductDetailState>(
        listener: (context, state) {
          if (state is ProductDetailErrorState) {
            EasyLoading.showError(state.message);
          } else if (state is ProductDetailAddedToCartState) {
            EasyLoading.showSuccess(state.message);
          }
        },
        listenWhen: (previous, current) {
          if (current is ProductDetailErrorState ||
              current is ProductDetailAddedToCartState) {
            return true;
          }
          return false;
        },
        buildWhen: (previous, current) {
          if (current is ProductDetailLoadedState ||
              current is ProductDetailErrorState) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is ProductDetailErrorState) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Produk Tidak Ditemukan",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: dark,
                  ),
                ),
              ),
            );
          } else if (state is ProductDetailLoadedState) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
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
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // product image
                      Container(
                        height: 218,
                        width: 311,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: softGray,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(state.product.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // product category
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.product.category,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: orange,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // product name
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.product.name,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: dark,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // product price
                          Text(
                            "Rp ${state.product.price}",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: dark,
                            ),
                          ),
                          // step counter
                          Row(
                            children: [
                              // minus button
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_quantity > 0) {
                                      _quantity--;
                                    }
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: softGray,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: dark,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              // counter
                              Text(
                                _quantity.toString(),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: dark,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              // plus button
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _quantity++;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: softGray,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: dark,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // product description
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.product.description,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: dark,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              bottomSheet: Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Align(
                  child: CustomFilledButton(
                    width: double.infinity,
                    color: orange,
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    text: "Tambahkan Ke Keranjang",
                    onPressed: () {
                      _addToCart(state.product);
                    },
                  ),
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
    );
  }

  void _addToCart(Product product) {
    BlocProvider.of<ProductDetailBloc>(context)
        .add(AddToCartEvent(product: product, quantity: _quantity));
  }
}

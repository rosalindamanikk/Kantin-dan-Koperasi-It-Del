import 'package:delmart/features/home/data/models/products/product_model.dart';
import 'package:delmart/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ProductItem extends StatefulWidget {
  final ProductList? productList;

  const ProductItem({Key? key, this.productList}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.productList!.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            AutoRouter.of(context).push(
                ProductDetailScreen(productId: widget.productList![index].id));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // image
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(widget.productList![index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),
                // name, distributor, price, rating
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productList![index].name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // category
                      Text(
                        widget.productList![index].category,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Rp. ${widget.productList![index].price}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

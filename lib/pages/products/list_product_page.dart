import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
// import 'package:flutter_app/pages/products/models/product.dart';
import 'package:flutter_app/pages/products/widgets/appbar.dart';
import 'package:flutter_app/pages/products/widgets/list_category.dart';
// import 'package:flutter_app/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBarListProduct(),
          ),
          body: ListCategory(),
          // GridView.count(
          //   padding: const EdgeInsets.only(left: 20, top: 20),
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   crossAxisCount: 2,
          //   children: List.generate(
          //     products.length,
          //     (index) => CartItem(
          //       imgUrl: products[index].image,
          //       name: products[index].name,
          //       price: products[index].price.toString(),
          //       start: 5.toString(),
          //       favoriteFunc: () => print("favorite"),
          //       addCartFunc: () => cart.add(products[index]),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import '../../pages/cart/provider/cart.dart';
import '../../pages/products/models/product.dart';
// import '../../pages/products/models/product.dart';
import '../../pages/products/widgets/appbar.dart';
import '../../pages/products/widgets/list_category.dart';
import '../../widgets/cart_item.dart';
// import '../../widgets/cart_item.dart';
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
          body: Column(
            children: [
              ListCategory(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.85,
                    ),
                    itemBuilder: (context, index) => CartItem(
                      sizeCart: "small",
                      imgUrl: products[index].image,
                      name: products[index].name,
                      price: products[index].price.toString(),
                      start: 5.toString(),
                      favoriteFunc: () => print("like"),
                      addCartFunc: () => cart.add(products[index]),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
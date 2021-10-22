import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
import 'package:flutter_app/pages/home/widgets/title_content.dart';
import 'package:flutter_app/pages/products/models/product.dart';
import 'package:flutter_app/widgets/cart_item.dart';
import 'package:provider/provider.dart';

class ListBestSellerItems extends StatefulWidget {
  const ListBestSellerItems({Key? key}) : super(key: key);

  @override
  _ListBestSellerItemsState createState() => _ListBestSellerItemsState();
}

class _ListBestSellerItemsState extends State<ListBestSellerItems> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Column(
          children: [
            TitleContent(
              title: 'Best seller',
              textParam: "Show all",
              functionPress: () => print("Best seller"),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(products.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CartItem(
                      sizeCart: "big",
                      imgUrl: products[index].image.toString(),
                      name: products[index].name.toString(),
                      price: products[index].price.toString(),
                      favoriteFunc: () => print('Favorite'),
                      addCartFunc: () {
                        cart.add(products[index]);
                      },
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 25),
          ],
        );
      },
    );
  }
}

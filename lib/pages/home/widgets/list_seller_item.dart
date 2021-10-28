import 'package:flutter/material.dart';
import '../../../pages/cart/provider/cart.dart';
import '../../../pages/home/widgets/title_content.dart';
import '../../../pages/products/models/product.dart';
import '../../../widgets/cart_item.dart';
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

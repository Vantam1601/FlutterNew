import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/pages/home/widgets/title_content.dart';
import 'package:flutter_app/widgets/cart_item.dart';

class ListBestSellerItems extends StatefulWidget {
  const ListBestSellerItems({Key? key}) : super(key: key);

  @override
  _ListBestSellerItemsState createState() => _ListBestSellerItemsState();
}

class _ListBestSellerItemsState extends State<ListBestSellerItems> {
  @override
  Widget build(BuildContext context) {
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
            children: List.generate(recommends.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CartItem(
                  imgUrl: recommends[index]['imgUrl'].toString(),
                  name: recommends[index]['title'].toString(),
                  price: recommends[index]['price'].toString(),
                  favoriteFunc: () => print('Favorite'),
                  addCartFunc: () => print('add to cart'),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}

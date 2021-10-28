import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../pages/home/widgets/title_content.dart';
import '../../../widgets/cart_item.dart';

class ListNewArrivalItems extends StatefulWidget {
  const ListNewArrivalItems({Key? key}) : super(key: key);

  @override
  _ListNewArrivalItemsState createState() => _ListNewArrivalItemsState();
}

class _ListNewArrivalItemsState extends State<ListNewArrivalItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContent(
          title: 'New Arrivals',
          textParam: "Show all",
          functionPress: () => print("New Arrivals"),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recently.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CartItem(
                  imgUrl: recently[index]['imgUrl'].toString(),
                  name: recently[index]['title'].toString(),
                  price: recently[index]['price'].toString(),
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

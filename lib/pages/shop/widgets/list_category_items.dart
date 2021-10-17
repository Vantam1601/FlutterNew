import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/pages/shop/widgets/category_item.dart';

class ListCategoryItems extends StatefulWidget {
  const ListCategoryItems({Key? key}) : super(key: key);

  @override
  _ListCategoryItemsState createState() => _ListCategoryItemsState();
}

class _ListCategoryItemsState extends State<ListCategoryItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        categories.length,
        (index) => CategoryItem(
          imgUrl: categories[index]['imgUrl'].toString(),
          title: categories[index]['title'].toString(),
          number: '15',
          press: () => print("List Proudct by id category"),
        ),
      ),
    );
  }
}

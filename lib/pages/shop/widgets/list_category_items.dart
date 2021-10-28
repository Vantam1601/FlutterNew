import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../pages/products/list_product_page.dart';
import '../../../pages/shop/widgets/category_item.dart';

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
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListProduct(),
            ),
          ),
        ),
      ),
    );
  }
}

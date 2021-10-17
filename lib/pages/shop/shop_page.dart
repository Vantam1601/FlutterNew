import 'package:flutter/material.dart';
import 'package:flutter_app/pages/shop/widgets/bg_banner.dart';
import 'package:flutter_app/pages/shop/widgets/list_category_items.dart';
import 'package:flutter_app/pages/shop/widgets/appbar_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSearch(),
      body: ListView(
        children: [
          BackgroundBanner(),
          ListCategoryItems(),
        ],
      ),
    );
  }
}

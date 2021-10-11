import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/list_category_item.dart';
import 'package:flutter_app/pages/home/widgets/list_seller_item.dart';
import 'package:flutter_app/pages/home/widgets/list_vendor_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 40),
          ListCategoryItems(),
          ListVendorItems(),
          ListBestSellerItems(),
        ],
      ),
    );
  }
}

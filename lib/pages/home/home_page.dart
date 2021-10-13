import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/banner_image.dart';
import 'package:flutter_app/pages/home/widgets/list_arrival_item.dart';
import 'package:flutter_app/pages/home/widgets/list_blog_item.dart';
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
          BannerImage(),
          ListNewArrivalItems(),
          ListBlogItems(),
        ],
      ),
    );
  }
}

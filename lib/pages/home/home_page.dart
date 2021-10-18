import 'package:flutter/material.dart';

import 'package:flutter_app/pages/home/widgets/appbar.dart';
// import 'package:flutter_app/pages/home/widgets/banner_image.dart';
// import 'package:flutter_app/pages/home/widgets/banner_sale.dart';
// import 'package:flutter_app/pages/home/widgets/list_arrival_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_blog_item.dart';
import 'package:flutter_app/pages/home/widgets/list_category_item.dart';
import 'package:flutter_app/pages/home/widgets/list_seller_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_seller_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_vendor_item.dart';
import 'package:flutter_app/pages/home/widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: PreferredSize(
        child: AppBarHome(),
        preferredSize: const Size.fromHeight(50.0),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // SizedBox(height: 40),
          ListCategoryItems(),
          // ListVendorItems(),
          ListBestSellerItems(),
          // BannerImage(),
          // ListNewArrivalItems(),
          // BannerSale(),
          // ListBlogItems(),
        ],
      ),
    );
  }
}

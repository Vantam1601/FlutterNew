import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
// import 'package:flutter_app/pages/home/widgets/banner_image.dart';
// import 'package:flutter_app/pages/home/widgets/banner_sale.dart';
// import 'package:flutter_app/pages/home/widgets/list_arrival_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_blog_item.dart';
//import 'package:flutter_app/pages/home/widgets/list_category_item.dart';
import 'package:flutter_app/pages/home/widgets/list_seller_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_seller_item.dart';
// import 'package:flutter_app/pages/home/widgets/list_vendor_item.dart';
import 'package:flutter_app/pages/home/widgets/navigation_drawer.dart';
import 'package:flutter_app/resources/image_url.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
            backgroundColor: white,
            title: Align(
              alignment: Alignment.center,
              child: Image.asset(logo),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      cart.count.toString(),
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () => print("Check out"),
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              // SizedBox(height: 40),
              // ListCategoryItems(),
              // ListVendorItems(),
              ListBestSellerItems(),
              // BannerImage(),
              // ListNewArrivalItems(),
              // BannerSale(),
              // ListBlogItems(),
            ],
          ),
        );
      },
    );
  }
}

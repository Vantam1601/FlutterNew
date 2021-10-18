import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class AppBarListProduct extends StatefulWidget {
  const AppBarListProduct({Key? key}) : super(key: key);

  @override
  _AppBarListProductState createState() => _AppBarListProductState();
}

class _AppBarListProductState extends State<AppBarListProduct> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      title: Align(
        alignment: Alignment.center,
        child: Text(
          "data",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.arrow_back_ios_new,
          size: 16,
          color: black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: () => print("Check out page"),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: black,
            ),
          ),
        ),
      ],
    );
  }
}

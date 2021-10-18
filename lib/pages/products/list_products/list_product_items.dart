import 'package:flutter/material.dart';
import 'package:flutter_app/pages/products/list_products/widgets/appbar.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarListProduct(),
      ),
      body: Text("Center data"),
    );
  }
}

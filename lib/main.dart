import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
import 'package:flutter_app/pages/splash_page.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      child: OreoFashion(),
    ),
  );
}

class OreoFashion extends StatelessWidget {
  const OreoFashion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/shop/widgets/search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchField(),
    );
  }
}

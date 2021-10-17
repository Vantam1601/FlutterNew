import 'package:flutter/material.dart';

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
      body: Text("Search Page"),
    );
  }
}

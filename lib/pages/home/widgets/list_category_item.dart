import 'package:flutter/cupertino.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/pages/home/widgets/title_content.dart';
import 'package:flutter_app/themes/color.dart';

class ListCategoryItems extends StatefulWidget {
  const ListCategoryItems({Key? key}) : super(key: key);

  @override
  _ListCategoryItemsState createState() => _ListCategoryItemsState();
}

class _ListCategoryItemsState extends State<ListCategoryItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContent(
          title: 'Categories',
          textParam: "Show all",
          functionPress: () => print("Category"),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(
                            categories[index]['imgUrl'].toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: black,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}

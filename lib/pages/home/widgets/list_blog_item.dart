import 'package:flutter/cupertino.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/pages/home/widgets/title_content.dart';
import 'package:flutter_app/themes/color.dart';

class ListBlogItems extends StatefulWidget {
  const ListBlogItems({Key? key}) : super(key: key);

  @override
  _ListBlogItemsState createState() => _ListBlogItemsState();
}

class _ListBlogItemsState extends State<ListBlogItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContent(
          title: 'Blog',
          textParam: 'Show all',
          functionPress: () => print("List blog"),
        ),
        SizedBox(height: 10),
        Column(
          children: List.generate(blogList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 15, right: 5),
              child: Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            blogList[index]['imgUrl'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            blogList[index]['title'],
                            style: TextStyle(
                              color: black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "By " + blogList[index]['author'],
                                style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 30),
                              Text(
                                blogList[index]['dateCreate'],
                                style: TextStyle(
                                  color: gray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}

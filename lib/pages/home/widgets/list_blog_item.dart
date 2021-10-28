import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../pages/home/widgets/title_content.dart';
import '../../../themes/color.dart';

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
          title: 'Blogs',
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
                child: TextButton(
                  onPressed: () => print("Blog detail"),
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
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              blogList[index]['title'],
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              blogList[index]['dateCreate'],
                              style: TextStyle(
                                color: gray,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  size: 14,
                                  color: gray,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Fashion By ",
                                  style: TextStyle(
                                    color: gray,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  blogList[index]['author'],
                                  style: TextStyle(
                                    color: black,
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
                  style: TextButton.styleFrom(
                    primary: gray.withOpacity(0.05),
                  ),
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

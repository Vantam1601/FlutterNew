import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../pages/home/widgets/title_content.dart';
import '../../../widgets/vendor_item.dart';

class ListVendorItems extends StatefulWidget {
  const ListVendorItems({Key? key}) : super(key: key);

  @override
  _ListVendorItemsState createState() => _ListVendorItemsState();
}

class _ListVendorItemsState extends State<ListVendorItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContent(
          title: 'Vendors',
          textParam: "Show all",
          functionPress: () => print("Vendors"),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(vendors.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: VendorItem(
                  imgUrl: vendors[index]['imgUrl'],
                  title: vendors[index]['name'],
                  desc: vendors[index]['star'].toString(),
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

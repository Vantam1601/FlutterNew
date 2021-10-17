import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class CategoryItem extends StatelessWidget {
  final String? imgUrl, title, number;
  final Function()? press;
  const CategoryItem(
      {Key? key, this.imgUrl, this.title, this.number, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextButton(
        onPressed: press!,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: gray.withOpacity(0.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          imgUrl!,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    number!,
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_right,
                    size: 18,
                    color: black,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

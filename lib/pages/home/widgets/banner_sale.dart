import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/themes/color.dart';

class BannerSale extends StatelessWidget {
  const BannerSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image(
                  image: NetworkImage(
                    homeImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 60,
                child: Container(
                  width: 60,
                  height: 50,
                  child: TextButton(
                    onPressed: () => print("Shop Sale"),
                    child: Text(
                      "Shop Sale",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: black,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: green,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 50,
          width: double.infinity,
          color: gray.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 0),
            child: Text(
              "Free Shipping & Free Return",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}

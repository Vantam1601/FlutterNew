import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../themes/color.dart';

class BannerSale extends StatelessWidget {
  const BannerSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                homeImg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: white,
                onPrimary: black.withOpacity(0.45),
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: Size(220, 50),
              ),
              onPressed: () => print("Shop Sale"),
              child: Text(
                'Shop Sale',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 50,
          width: double.infinity,
          color: gray.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 0),
            child: Text(
              "Free Shipping & Free Return",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
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



import 'package:demoplashscreen/json/constant.dart';
import 'package:demoplashscreen/widgets/custom_slider.dart';
import 'package:demoplashscreen/widgets/custom_slider_productdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rating = 5.5 ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //cái icon trở về
        leading: RoundedIconBtn(
          iconData: Icons.arrow_back_ios ,
            press: ()=>Navigator.pop(context),
        ) ,
        //  cái icon giỏ hàng
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_bag, color:  Colors.black,),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body:getBody(rating),
    );
  }
}
// phần thân
getBody(rating) {
  return ListView(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomeCarouselProduct(
          items: slider,)
      ) ,

        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Ten San Pham" , style: TextStyle(
                  fontSize: 20
                ),),
                Text("data")
              ],
            ) ,
            RatingBar.builder(
            initialRating: 3.5,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
            print(rating);
            },
            ),
          ],
        ) ,
      SizedBox(child: Image.asset("assets/images/2_2.jpg") , height: 200) ,
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Rating", style: TextStyle(
                    fontSize: 16
                ),),
                Icon(Icons.arrow_forward_ios, size: 16,color: Colors.blueAccent.withOpacity(0.5),)
              ],
            ),
            SizedBox(height: 15,),
            Divider(
              color: Colors.grey.withOpacity(0.8),

            )
          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Details", style: TextStyle(
                    fontSize: 16
                ),),
                Icon(Icons.arrow_forward_ios, size: 16,color: Colors.blueAccent.withOpacity(0.5),)
              ],
            ),
            SizedBox(height: 15,),
            Divider(
              color: Colors.grey.withOpacity(0.8),

            )
          ],
        ),
      ),
    ],
  );
}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({Key? key,
    required this.iconData,
     required this.press
  }) : super(key: key);
  final IconData iconData ;
  final GestureTapCallback press ;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height:  40 ,
        width: 40,
        child: FlatButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.white ,
          onPressed: press ,
          child: Icon(iconData),
        )
    );
  }
}


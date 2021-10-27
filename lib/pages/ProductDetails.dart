import 'package:flutter/material.dart';
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: RoundedIconBtn(
          iconData: Icons.arrow_back_ios ,
            press: ()=>Navigator.pop(context),
        )
      ),
    );
  }
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


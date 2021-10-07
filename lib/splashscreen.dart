import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //router
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( Duration(seconds: 3),(){
      //chuyen huong trang sau 3 s => home page
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage() ));

    } );
  }
  //router end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 120,) ,
            SizedBox(height: 20,),
            //vong tron xoay xoay
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),

      ),
    );
  }
}
//home page

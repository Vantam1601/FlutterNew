import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage = 0;
  List<Map<String, String>> spData = [
    {
      "text": "Xin Chào Việt Nam",
      "image": "assets/images/2.jpg"
    },
    {
      "text": "Xin Chào Tiến Đẹp Trai",
      "image": "assets/images/2_1.jpg"
    },
    {
      "text": "Xin Chào Cô Nương",
      "image": "assets/images/2_2.jpg"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage =value ;
                    });
                  } ,
                  itemCount: spData.length, itemBuilder: (context, index) =>
                  SplashContent(
                    image: spData[index]["image"]!,
                    text: spData[index]["text"]!,
                  )),

            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          spData.length, (index) => buidDot(index)),
                    ) ,
                    Spacer(),
                    SizedBox(
                      height: 45,
                      width: 250,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          onPressed: (){},
                          color: Colors.black,
                          child: Text("Get Started" , style: TextStyle( color: Colors.white),)),
                    ) ,
                    Spacer(),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  buidDot(int index) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: EdgeInsets.only(right: 5),
      height: 6, width:currentPage==index ? 10:6,
      decoration: BoxDecoration(
          color:  currentPage == index ? Colors.deepOrange : Colors.grey,
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}
class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text="", this.image=""}) : super(key: key);
  final String text ,image ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text("Hà Nội" ,
          style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrange),),
        Text(text, style: TextStyle(
            fontSize: 20 , color: Colors.deepPurpleAccent
        ), ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(image ,),
        )
      ],
    );
  }
}
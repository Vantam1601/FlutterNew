import 'package:demoplashscreen/json/constant.dart';
import 'package:flutter/material.dart';
import 'package:demoplashscreen/widgets/custom_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }
  getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomeCarouselHomePage(
            items: slider,),
        ) ,

        SizedBox( height: 40,) ,

        Padding(
          padding: const EdgeInsets.only(left: 15 , right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Categories', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold ),),
              Row(
                children: <Widget>[
                  Text('all', style: TextStyle(
                    color: Colors.grey ),),
                  SizedBox( width: 5,),
                  Icon(
                    Icons.arrow_forward_ios_sharp ,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              width: size.width,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)
              ),
            ) ,
            Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Positioned(
                  bottom: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('Winter Conllection', style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold ),),
                        SizedBox(
                          height: 10,),
                        Row(
                          children: [
                            Text('DISCOVER', style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold ),),
                            SizedBox( width: 5,),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                )


            )
          ],
        ) ,
        SizedBox(height: 20,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(categories[index]['imgUrl'].toString()),
                            fit: BoxFit.cover),
                            borderRadius : BorderRadius.circular(5)),

                      ),
                      Container(
                        decoration: BoxDecoration(
                           color: Colors.black.withOpacity(0.1),
                            borderRadius : BorderRadius.circular(5)
                        ),),
                      Positioned(
                        bottom: 5  ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                              fontSize: 18 ,
                              fontWeight: FontWeight.bold ,
                              color: Colors.white ),),
                        ),
                      )
                    ],
                  ),
                ),
              ) ;
            }),
          ),
        ) ,

        SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.only(left: 15 , right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recommended for you', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold ),),
              Row(
                children: <Widget>[
                  Text('all', style: TextStyle(
                      color: Colors.grey ),),
                  SizedBox( width: 5,),
                  Icon(
                    Icons.arrow_forward_ios_sharp ,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: 20,),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recommends.length, (index){
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140 ,
                      height: 180 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                              recommends[index]['imgUrl'].toString()),
                            fit: BoxFit.cover ,)),
                    ),
                    SizedBox(height: 5 ,) ,
                    Container(
                      width: 140 ,
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Text(recommends[index]['title'].toString() ,
                            style: TextStyle(
                              fontWeight: FontWeight.bold ,
                              color: Colors.black ,
                              height: 1.5 ,
                            ),) ,
                            SizedBox(height: 5 ,),
                            Text( "\$ "+ recommends[index]['price'].toString() ,
                              style: TextStyle(
                                fontWeight: FontWeight.bold ,
                                color: Colors.grey ,
                                height: 1.5 ,
                              ),) ,
                          ],
                        ),
                    )
                  ],
              ),
                ) ;
            }),
          ),
        ),
        SizedBox(height: 40,),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15 , right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recent viewed', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold ),),
              Row(
                children: <Widget>[
                  Text('all', style: TextStyle(
                      color: Colors.grey ),),
                  SizedBox( width: 5,),
                  Icon(
                    Icons.arrow_forward_ios_sharp ,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recommends.length, (index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140 ,
                      height: 180 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                                recently[index]['imgUrl'].toString()),
                            fit: BoxFit.cover ,)),
                    ),
                    SizedBox(height: 5 ,) ,
                    Container(
                      width: 140 ,
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text(recently[index]['title'].toString() ,
                            style: TextStyle(
                              fontWeight: FontWeight.bold ,
                              color: Colors.black ,
                              height: 1.5 ,
                            ),) ,
                          SizedBox(height: 5 ,),
                          Text( "\$ "+ recently[index]['price'].toString() ,
                            style: TextStyle(
                              fontWeight: FontWeight.bold ,
                              color: Colors.grey ,
                              height: 1.5 ,
                            ),) ,
                        ],
                      ),
                    )
                  ],
                ),
              ) ;
            }),
          ),
        ),
        SizedBox(height: 40,),

        SizedBox(height: 30,),
      ],
    );
  }
}

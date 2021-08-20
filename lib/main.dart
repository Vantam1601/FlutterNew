import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';
import 'mec.dart';

void main() {
//  numbers.forEach((number) {
//    print(number);
//  });

//  stringNumbers.forEach((str) {
//    print(str);
//  });
  var myCar = Merc(
    name:'Mercedes G63',
    year: 2020,
    color: 'Blue'
  );
  myCar.showInfo();
  List<String> number1 = ['a','b'];
  List<String> number2 = ['c','d'];
  List<String> number3 = ['e','f'];
//  print(myCar.totalNumber(number1,number2,number3));


  List<Merc> mers = <Merc>[
    Merc(name:'G63',year: 2020,color: 'black'),
    Merc(name:'AMG',year: 2020,color: 'black'),
    Merc(name:'C200',year: 2021,color: 'black'),
    Merc(name:'C500',year: 2020,color: 'yewllow'),
  ];

  mers.sort((a,b)=>a.name!.compareTo(b.name!));
  //mers.sort((a,b)=>a.year!-b.year!);


  //Update item
  //var filterCar = mers.where((car)=>car.year == 2020 && car.name!.contains("Mercedes")).toList();

  var b;
  b ??= 5;

  int? a;
  a ??= 5;

//  var totalNumber = (var a, var b) {
//    return a + b;
//  };
//  print(totalNumber(1,2));

  var iterable = new Iterable.generate(3);
    print('su dung iterable render so');
//  for (var item in iterable) {
//    print(item);
//  }
  iterable.forEach((element) {
    print(element);
  });

  print('==>>> Su dung iterable ');
  for (var item in mers) {
    print(item);
  }

  var itemToMap = {
    'name': 'tri',
    'age' : '24'
  };
  print('==>> Map');
  for(var key in itemToMap.keys) {
    print('$key :  ${itemToMap[key]}');
  }

  runApp (
    Center(child: Text(
      'Texxt',
      style: TextStyle(fontSize: 20),
      textDirection: TextDirection.ltr,
    )),
  );
}
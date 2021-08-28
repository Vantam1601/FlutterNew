import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';

void main() {
//  numbers.forEach((number) {
//    print(number);
//  });

//  stringNumbers.forEach((str) {
//    print(str);
//  });
//  var myCar = Car(
//    name:'Mercedes G63',
//    year: 2020,
//  );
//  myCar.doSomething();
//  myCar.sayHello(personName: 'Tri');
//  var totalNumber = totalNumbers(7, 9);

  List<Car> cars = <Car>[
    Car(name: 'Mercedes - G63', year: 2020),
    Car(name: 'Mercedes - AMG', year: 2020),
    Car(name: 'Mercedes - C200', year: 2021),
    Car(name: 'Mercedes - C500', year: 2020),
    Car(name: 'Audi', year: 2021),
    Car(name: 'Lambogrini', year: 2019)
  ];

  //cars.sort((a,b)=>a.name!.compareTo(b.name!));
  //cars.sort((a,b)=>a.year!-b.year!);
  //Update item

  cars.add(Car(name: 'Royal', year: 2020));
  //var filterCar = cars.where((car)=>car.year == 2020 && car.name!.contains("Mercedes")).toList();

  runApp(
    Center(
        child: Text(
      cars.toString(),
      style: TextStyle(fontSize: 20),
      textDirection: TextDirection.ltr,
    )),
  );
}

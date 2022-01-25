import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/feature/counter/app.dart';
import 'package:flutter_app/feature/counter/counter_observer.dart';
import 'package:flutter_app/feature/infinite_list/app.dart';
import 'package:flutter_app/feature/infinite_list/bloc_observer.dart';
//import 'package:flutter_app/feature/timer/timer_app.dart';

//void main() => runApp(App());

//void main() {
//  BlocOverrides.runZoned(
//        () => runApp(const CounterApp()),
//    blocObserver: CounterObserver(),
//  );
//}

void main() {
  BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: SimpleBlocObserver(),
  );
}

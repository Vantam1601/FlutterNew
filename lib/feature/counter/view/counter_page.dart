import 'package:flutter/material.dart';
import 'package:flutter_app/feature/counter/bloc/cubit.dart';
import 'package:flutter_app/feature/counter/view/count_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

import 'package:bloc_test/logic/cubit/counter_cubit.dart';
import 'package:bloc_test/presentation/screens/homeScreen.dart';
import 'package:bloc_test/presentation/screens/secondScreen.dart';
import 'package:bloc_test/presentation/screens/thirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  final CounterCubit counterCubit = CounterCubit();
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: counterCubit, child: MyHomePage()));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: counterCubit, child: SecondScreen()));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: counterCubit, child: ThirdScreen()));

        break;
      default:
        return null;
    }
  }
}

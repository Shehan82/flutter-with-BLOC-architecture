import 'package:bloc_test/logic/cubit/counter_cubit.dart';
import 'package:bloc_test/presentation/screens/homeScreen.dart';
import 'package:bloc_test/presentation/screens/secondScreen.dart';
import 'package:bloc_test/presentation/screens/thirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  final CounterCubit _counterCubit = CounterCubit();
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: MyHomePage(
                  title: "blaaaaaaaa",
                )));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: SecondScreen(
                  title: "blaaaaaaaa",
                )));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: ThirdScreen(
                  title: "blaaaaaaaa",
                )));
        break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}

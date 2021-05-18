import 'package:bloc_test/presentation/routes/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRoute _appRoute = AppRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRoute.onGenerateRoute,
    );
  }

  void dispose() {
    _appRoute.dispose();
    super.dispose();
  }
}

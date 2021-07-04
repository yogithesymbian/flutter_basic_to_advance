import 'package:flutter/material.dart';
import 'package:hello_world/router/routeryo.dart';
import 'router/routeryo.dart';
import 'router/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterYo.generateRoute,
      initialRoute: homeRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/ui/a_01_09.dart';
import 'package:hello_world/ui/home/home.dart';
import 'package:hello_world/ui/list_listview.dart';
import 'package:hello_world/router/constant.dart';

class RouterYo {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => ListCourseYtPage());
      case epsUntileNineRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case listViewRoute:
        return MaterialPageRoute(builder: (_) => ListViewPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

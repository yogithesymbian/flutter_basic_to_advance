import 'package:flutter/material.dart';
import 'package:hello_world/ui/a_01_09.dart';
import 'package:hello_world/ui/basic_knowledge/life_cycle_state.dart';
import 'package:hello_world/ui/firebase/firebase_home.dart';
import 'package:hello_world/ui/home/home.dart';
import 'package:hello_world/ui/list_listview.dart';
import 'package:hello_world/router/constant.dart';
import 'package:hello_world/ui/other_basic_knowledge/main_navigation_page.dart';

class RouterYo {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => ListCourseYtPage());
      case lifeCyclePageRoute:
        return MaterialPageRoute(builder: (_) => LifeCyclePage());
      case mainNavigationPage:
        return MaterialPageRoute(builder: (_) => MainNavigationPage());
      case epsUntileNineRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case listViewRoute:
        return MaterialPageRoute(builder: (_) => ListViewPage());
      // case firebaseHomePageRoute:
      //   return MaterialPageRoute(builder: (_) => FirebaseHome());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

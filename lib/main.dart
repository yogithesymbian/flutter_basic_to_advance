import 'package:flutter/material.dart';
import 'package:hello_world/router/routeryo.dart';
// import 'package:hello_world/ui/firebase/auth_services.dart';
// import 'package:provider/provider.dart';
import 'router/routeryo.dart';
import 'router/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // StreamProvider.value(
        //   value: AuthServices.firebaseUserStream,
        // child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterYo.generateRoute,
      initialRoute: homeRoute,
      // ),
    );
  }
}

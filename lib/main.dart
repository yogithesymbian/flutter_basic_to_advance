import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi Hello World"),
          ),
          body: Container(
            color: Colors.lightBlueAccent,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.all(20),
            child: Container(
              // margin: EdgeInsets.only(bottom: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Colors.amber, Colors.blue])),
            ),
          )),
    );
  }
}

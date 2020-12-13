import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void addNum() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFull Widget"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 11 + number.toDouble()),
              ),
              RaisedButton(
                child: Text("Add Number"),
                onPressed: addNum,
              )
            ],
          ),
        ),
      ),
    );
  }
}

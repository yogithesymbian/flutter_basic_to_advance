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
          title: Text("Textstyle"),
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
              ),
              Text(
                number.toString(),
                style: TextStyle(fontSize: 11 + number.toDouble()),
              ),
              RaisedButton(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Add Number yogi arif widodo",
                  style: TextStyle(
                    fontFamily: "OperatorMonoBoldRegular",
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    number += 1;
                  });
                },
              ),
              Text(
                "\ntext style",
                style: TextStyle(
                    // fontFamily: "OperatorMonoBoldRegular",
                    // fontStyle: FontStyle.italic,
                    fontSize: 18,
                    decoration: TextDecoration.overline,
                    decorationColor: Colors.red,
                    decorationThickness: 5), // thicknes doesnt work on web
              ),
            ],
          ),
        ),
      ),
    );
  }
}

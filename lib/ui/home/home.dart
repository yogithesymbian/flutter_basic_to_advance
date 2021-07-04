import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListCourseYtPage(),
    );
  }
}

class ListCourseYtPage extends StatefulWidget {
  @override
  _ListCourseYtPageState createState() => _ListCourseYtPageState();
}

class _ListCourseYtPageState extends State<ListCourseYtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn from youtube"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text("First Application"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Application Life Cycle state"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("SplashScreen Android & IOS"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

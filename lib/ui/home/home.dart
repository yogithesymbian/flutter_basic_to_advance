import 'package:flutter/material.dart';
import 'package:hello_world/router/constant.dart';

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
              FlutterBasicKnowledge(),
              Divider(),
              FlutterLayoutBasicWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

class FlutterLayoutBasicWidgets extends StatelessWidget {
  const FlutterLayoutBasicWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Flutter Layout + Basic Widgets",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ],
    );
  }
}

class FlutterBasicKnowledge extends StatelessWidget {
  const FlutterBasicKnowledge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Flutter Basic Knowledge",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
        Divider(),
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              "First Application",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, lifeCyclePageRoute);
            },
            child: Text(
              "Application Life Cycle state",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              "SplashScreen Android & IOS",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

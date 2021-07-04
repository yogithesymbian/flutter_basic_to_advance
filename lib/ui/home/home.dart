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
              YoTitleTxt("Flutter Basic Knowledge"),
              FlutterBasicKnowledge(),
              Divider(),
              YoTitleTxt("Flutter Layout + Basic Widgets"),
            ],
          ),
        ),
      ),
    );
  }
}

class YoTitleTxt extends StatelessWidget {
  const YoTitleTxt(
    this.dataTxt, {
    Key key,
  }) : super(key: key);

  final String dataTxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          dataTxt.toString(),
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

import 'package:flutter/material.dart';
import 'package:flutterbasic/components/button.dart';
import 'package:flutterbasic/router/constant.dart';

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
              Divider(),
              FlutterBasicKnowledge(),
              Divider(),
              YoTitleTxt("Flutter Layout + Basic Widgets"),
              Divider(),
              YoTitleTxt("Other Basic Knowledge"),
              YoMatchParentBtn("Navigation", () {
                Navigator.pushNamed(context, mainNavigationPage);
              }),
              Divider(),
              YoTitleTxt("Firebase ( android & ios )"),
              YoMatchParentBtn("Authentication User", () {
                Navigator.pushNamed(context, firebaseHomePageRoute);
              })
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
        YoMatchParentBtn("First Application", () {}),
        YoMatchParentBtn("Application Life Cycle state", () {
          Navigator.pushNamed(context, lifeCyclePageRoute);
        }),
        YoMatchParentBtn("SplashScreen Android & IOS", () {}),
      ],
    );
  }
}

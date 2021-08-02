import 'package:flutter/material.dart';
import 'package:flutterbasic/router/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      print("====> APPS IN INACTIVE <====");
    } else if (state == AppLifecycleState.paused) {
      print("====> APPS IN PAUSED <====");
    } else if (state == AppLifecycleState.resumed) {
      print("====> APPS IN RESUMED <====");
    } else {
      print("====> none <====");
    }
  }

  int number = 0;
  String txtMsg = "saya sedang melatih kemampuan flutter saya";

  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Application site demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            episodeOneToNine(),
            Divider(),
            RaisedButton(
                child: Text("goto listView"),
                onPressed: () {
                  Navigator.pushNamed(context, listViewRoute);
                })
          ],
        ));
  }

  Column episodeOneToNine() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text(
                  txtMsg.toString(),
                  // maxLines: 2,
                  // overflow: TextOverflow.clip,
                  // softWrap: false // default true

                  // textAlign: TextAlign.center,

                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ))),
        Divider(),
        Text("text 1"),
        Container(
            // color: Colors.black, // has moved to decoration
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black,
                      Colors.blue,
                      Colors.white,
                      Colors.white
                    ])),
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "hai yogi",
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Text("hai yogi"),
                    Spacer(),
                    Text("hai yogi"),
                    Spacer(),
                  ],
                ),
              ),
            )),
        Text("text 3"),
        Text("text 4"),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Text("text 4"),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Text("text 4"),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Text("text 4"),
          ],
        ),
        Divider(),
        // yoLearn@stateFullWidget
        Center(
          child: Column(
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                  child: Text("Tambah Bilangan"), onPressed: tekanTombol)
            ],
          ),
        ),
        RaisedButton(
            child: Text("change string message"),
            // yoLearn@anonyMouseMethod
            onPressed: () {
              setState(() {
                txtMsg = "some button from anonymouse (once todo)";
              });
            }),
        Divider()
      ],
    );
  }
}

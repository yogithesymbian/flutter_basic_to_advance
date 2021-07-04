import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application site demo"),
      ),
      body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: Text(
                "saya sedang melatih kemampuan flutter saya",
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
    );
  }
}

import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage>
    with WidgetsBindingObserver {
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
        title: Text("Application Life Cycle State"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        height: 195,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Colors.lightBlueAccent,
                  Colors.white,
                  Colors.white
                ]),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Message",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
            Text(
              "hello yogithesymbian,\nplease try on click home, or make other phone calling this phone to see the change, or try click history of user apps where has been open on background [burger icon].",
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "inactive, paused, resumed",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

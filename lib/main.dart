import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://storage.googleapis.com/kaggle-avatars/images/3736113-kg.jpg"),
                  fit: BoxFit.fill,
                  // repeat: ImageRepeat.repeat,
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage("assets/images/image_1.png"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

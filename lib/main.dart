import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Column(
          // Column | Row
          mainAxisAlignment: MainAxisAlignment.center, // rata tengah vertical
          crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
          children: [
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Row(
              children: [Text("text 4"), Text("text 5"), Text("text 6")],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/screen/home/components/header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [HeaderWithSearchBox(size: size)],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class YoMatchParentBtn extends StatelessWidget {
  const YoMatchParentBtn(
    this.dataTxt,
    this.press, {
    Key key,
  }) : super(key: key);

  final String dataTxt;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: press,
        child: Text(
          dataTxt,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

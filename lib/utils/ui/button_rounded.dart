import 'package:flutter/material.dart';
import 'package:hello_world/utils/constants.dart';

class BtnRounded extends StatelessWidget {
  const BtnRounded({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/utils/constants.dart';
import 'package:hello_world/utils/ui/button_rounded.dart';
import 'package:hello_world/utils/ui/title_with_underline.dart';

class TitleUnderlineWithMoreBtn extends StatelessWidget {
  const TitleUnderlineWithMoreBtn({
    Key key,
    this.txtTitle,
    this.txtBtn,
  }) : super(key: key);

  final String txtTitle;
  final String txtBtn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: txtTitle),
          Spacer(),
          BtnRounded(text: txtBtn)
        ],
      ),
    );
  }
}

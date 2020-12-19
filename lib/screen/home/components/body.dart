import 'package:flutter/material.dart';
import 'package:hello_world/screen/home/components/header_with_search_box.dart';
import 'package:hello_world/utils/ui/button_rounded.dart';
import 'package:hello_world/utils/constants.dart';
import 'package:hello_world/utils/ui/combine/title_underline_with_more_btn.dart';
import 'package:hello_world/utils/ui/title_with_underline.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size, txtWelcome: "Hi Yogi!"),
          TitleUnderlineWithMoreBtn(
            txtTitle: "Recommended",
            txtBtn: "More",
            press: () {},
          ),
          // it will cover 40% of our total width
          Container(
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding / 2,
                bottom: kDefaultPadding * 2.5),
            width: size.width * 0.4,
            child: Column(
              children: [
                Image.asset("assets/images/image_1.png"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

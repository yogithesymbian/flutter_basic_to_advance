import 'package:flutter/material.dart';
import 'package:hello_world/screen/home/components/header_with_search_box.dart';
import 'package:hello_world/utils/ui/combine/title_underline_with_more_btn.dart';
import 'package:hello_world/utils/ui/combine/yaw_card_imatext.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                YawCardImaTxt(
                  image: "assets/images/image_1.png",
                  title: "Bunga tanpa Bunga",
                  subTitle: "Indonesia",
                  price: "400",
                  press: () {},
                ),
                YawCardImaTxt(
                  image: "assets/images/image_1.png",
                  title: "Bunga tanpa Bunga",
                  subTitle: "Indonesia",
                  price: "400",
                  press: () {},
                ),
                YawCardImaTxt(
                  image: "assets/images/image_1.png",
                  title: "Bunga tanpa Bunga",
                  subTitle: "Indonesia",
                  price: "400",
                  press: () {},
                ),
                YawCardImaTxt(
                  image: "assets/images/image_1.png",
                  title: "Bunga tanpa Bunga",
                  subTitle: "Indonesia",
                  price: "400",
                  press: () {},
                ),
                YawCardImaTxt(
                  image: "assets/images/image_1.png",
                  title: "Bunga tanpa Bunga",
                  subTitle: "Indonesia",
                  price: "400",
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

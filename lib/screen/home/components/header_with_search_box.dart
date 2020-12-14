import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_world/utils/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
    this.txtWelcome,
  }) : super(key: key);

  final Size size;
  final String txtWelcome;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 0.25),
      // it will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            // id_cn_top
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 25 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
            ),
            child: Row(
              children: [
                Text(
                  txtWelcome,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                // id_cn_search
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 2),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.5)),
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        // id_txt_search
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.7),
                              fontWeight: FontWeight.w700),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    kIsWeb // is web || android
                        ? Image.network(
                            "/assets/icons/search.svg",
                            width: 20,
                            height: 20,
                          )
                        : SvgPicture.asset("assets/icons/search.svg")
                  ],
                )),
          )
        ],
      ),
    );
  }
}

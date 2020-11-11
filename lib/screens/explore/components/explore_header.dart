import 'package:fathers_charity/screens/home/components/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Explore",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(22),
              fontWeight: FontWeight.w500,
            ),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

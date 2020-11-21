import 'package:fathers_charity/constants.dart';
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
            "Our Campaigns",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w500,
              color: dTextColor,
            ),
          ),
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Bell.svg",
          //   numOfItem: 3,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}

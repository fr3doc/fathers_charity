import 'package:fathers_charity/constants.dart';
import 'package:fathers_charity/screens/home/components/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class DonationScreen extends StatelessWidget {
  static String routeName = "/donation";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor.withOpacity(0.03),
      appBar: headerAppBar(),
      body: Body(),
    );
  }

  AppBar headerAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(
          "Donation",
          style: TextStyle(
            color: dTextColor,
            fontSize: getProportionateScreenWidth(22),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 18.0),
          child: IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItem: 3,
            press: () {},
          ),
        ),
      ],
    );
  }
}

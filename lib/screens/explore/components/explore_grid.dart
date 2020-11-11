import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Our Campaigns",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container campaignsWidget(String category, String campaign, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              '$category',
              style: TextStyle(
                  color: (categoryColor == Color(0xffe9eefa)
                      ? Color(0xff2657ce)
                      : Colors.white)),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
        ],
      ),
    );
  }
}

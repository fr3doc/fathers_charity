import 'package:flutter/material.dart';

import '../../../constants.dart';
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
            SizedBox(height: getProportionateScreenHeight(1)),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            campaignsWidget(
                              'LeapersAID',
                              'Leprosarium',
                              'charity2',
                              kPrimaryColor.withOpacity(0.5),
                              kPrimaryColor.withOpacity(0.8),
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            campaignsWidget(
                                'Soup Kitchen',
                                'Kanda UnderBridge',
                                'charity',
                                Color(0xffe9eefa),
                                kPrimaryColor.withOpacity(0.3)),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: getProportionateScreenHeight(50)),
                            campaignsWidget(
                                'Soup Kitchen',
                                'Feed Street Kids',
                                'charity4',
                                Color(0xffe9eefa),
                                kPrimaryColor.withOpacity(0.3)),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            campaignsWidget(
                              'LeapersAID',
                              'Kordiabe Project',
                              'charity3',
                              kPrimaryColor.withOpacity(0.5),
                              kPrimaryColor.withOpacity(0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            campaignsWidget(
                              'LeapersAID',
                              'Leprosarium',
                              'charity2',
                              kPrimaryColor.withOpacity(0.5),
                              kPrimaryColor.withOpacity(0.8),
                            ),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            campaignsWidget(
                                'Soup Kitchen',
                                'Kanda UnderBridge',
                                'charity',
                                Color(0xffe9eefa),
                                kPrimaryColor.withOpacity(0.3)),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: getProportionateScreenHeight(50)),
                            campaignsWidget(
                                'Soup Kitchen',
                                'Feed Street Kids',
                                'charity4',
                                Color(0xffe9eefa),
                                kPrimaryColor.withOpacity(0.3)),
                            SizedBox(height: getProportionateScreenHeight(20)),
                            campaignsWidget(
                              'LeapersAID',
                              'Kordiabe Project',
                              'charity3',
                              kPrimaryColor.withOpacity(0.5),
                              kPrimaryColor.withOpacity(0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
          Text(
            '$campaign',
            style: TextStyle(
              color:
                  (bgColor == Color(0xffff5954)) ? Colors.white : Colors.black,
              fontSize: 18,
              height: 1,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: <Widget>[
              Container(
                height: 5,
                width: 100,
                color: (bgColor == Color(0xffff5954))
                    ? Colors.red
                    : Color(0xff2657ce),
              ),
              Expanded(
                child: Container(
                  height: 5,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.white.withOpacity(0.5)
                      : Color(0xff2657ce).withOpacity(0.5),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Hero(
            tag: '$img',
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/$img.png'),
              )),
            ),
          )
        ],
      ),
    );
  }
}

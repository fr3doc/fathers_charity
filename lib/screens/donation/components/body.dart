import 'package:fathers_charity/components/info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                InfoCard(
                  title: "Kokofu Leprosy",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: 1062,
                  press: () {
                    print('Active');
                  },
                ),
                InfoCard(
                  title: "Soup Kitchen",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: 75,
                  press: () {
                    print('Active');
                  },
                ),
                InfoCard(
                  title: "Kordiabe Project",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: 689,
                  press: () {
                    print('Active');
                  },
                ),
                InfoCard(
                  title: "Leprosarium",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: 7500,
                  press: () {
                    print('Active');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(18)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Track NGO's Member",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

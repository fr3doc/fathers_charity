import 'package:fathers_charity/screens/home/components/new_campaigns.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'head_banner.dart';
import 'home_header.dart';
import 'recent_campaigns.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            HeadBanner(),
            NewCampaigns(),
            SizedBox(height: getProportionateScreenWidth(30)),
            RecentCampaigns(),
          ],
        ),
      ),
    );
  }
}

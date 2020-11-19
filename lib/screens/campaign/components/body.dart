import 'package:fathers_charity/components/default_button.dart';
import 'package:fathers_charity/models/campaign/campaign.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'campaign_description.dart';
import 'campaign_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Campaign campaign;

  const Body({Key key, @required this.campaign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CampaignImages(campaign: campaign),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              CampaignDescription(
                campaign: campaign,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: DefaultButton(
                    text: "Donate",
                    press: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

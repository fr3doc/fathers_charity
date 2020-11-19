import 'package:fathers_charity/components/campaign_card.dart';
import 'package:fathers_charity/models/campaign/campaign.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class RecentCampaigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Recent Campaigns", press: () {}),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoCampaigns.length,
                (index) {
                  if (demoCampaigns[index].isPopular)
                    return CampaignCard(campaign: demoCampaigns[index]);

                  return SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

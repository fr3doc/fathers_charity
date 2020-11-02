import 'package:fathers_charity/models/campaign.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final CampaignDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: args.campaign.rating),
      body: Body(campaign: args.campaign),
    );
  }
}

class CampaignDetailsArguments {
  final Campaign campaign;
  CampaignDetailsArguments({@required this.campaign});
}

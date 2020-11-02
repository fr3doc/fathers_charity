import 'package:fathers_charity/models/campaign.dart';
import 'package:fathers_charity/screens/campaign/campaign_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class CampaignCard extends StatelessWidget {
  const CampaignCard({
    Key key,
    this.width = 140,
    this.aspectRatio = 1.20,
    @required this.campaign,
  }) : super(key: key);
  final double width, aspectRatio;
  final Campaign campaign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailScreen.routeName,
            arguments: CampaignDetailsArguments(campaign: campaign),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(7)),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: campaign.id.toString(),
                    child: Image.asset(campaign.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                campaign.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${campaign.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  // InkWell(
                  //   borderRadius: BorderRadius.circular(50),
                  //   onTap: () {},
                  //   child: Container(
                  //     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                  //     height: getProportionateScreenWidth(28),
                  //     width: getProportionateScreenWidth(28),
                  //     decoration: BoxDecoration(
                  //       color: campaign.isFavourite
                  //           ? kPrimaryColor.withOpacity(0.15)
                  //           : kSecondaryColor.withOpacity(0.1),
                  //       shape: BoxShape.circle,
                  //     ),
                  //     // child: SvgPicture.asset(
                  //     //   "assets/icons/Heart Icon_2.svg",
                  //     //   color: campaign.isFavourite
                  //     //       ? Color(0xFFFF4848)
                  //     //       : Color(0xFFDBDEE4),
                  //     // ),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

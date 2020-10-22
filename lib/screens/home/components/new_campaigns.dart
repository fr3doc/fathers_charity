import 'package:fathers_charity/screens/home/components/section_title.dart';
import 'package:fathers_charity/size_config.dart';
import 'package:flutter/material.dart';

class NewCampaigns extends StatelessWidget {
  const NewCampaigns({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(
            title: "New Campaigns",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewCampaignCard(
                category: "LeapersAid",
                image: "assets/images/Image Banner 1.png",
                numOfDonations: "\$100,000",
                press: () {},
              ),
              NewCampaignCard(
                category: "FeedStreetKids",
                image: "assets/images/Image Banner 2.png",
                numOfDonations: "\$50,000",
                press: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}

class NewCampaignCard extends StatelessWidget {
  const NewCampaignCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfDonations,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final String numOfDonations;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfDonations Donates")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

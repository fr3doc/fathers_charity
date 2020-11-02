import 'package:fathers_charity/models/campaign.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CampaignImages extends StatefulWidget {
  const CampaignImages({
    Key key,
    @required this.campaign,
  }) : super(key: key);

  final Campaign campaign;

  @override
  _CampaignImagesState createState() => _CampaignImagesState();
}

class _CampaignImagesState extends State<CampaignImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.campaign.id.toString(),
              child: Image.asset(widget.campaign.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.campaign.images.length,
                (index) => buildSmallCampaignPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallCampaignPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.campaign.images[index]),
      ),
    );
  }
}

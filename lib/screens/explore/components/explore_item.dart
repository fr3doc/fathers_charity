import 'package:fathers_charity/models/campaign/campaign_list.dart';
import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  final int index;
  const ExploreItem(
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Active");
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: campaignList[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              campaignList[index].imageUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                campaignList[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                campaignList[index].subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

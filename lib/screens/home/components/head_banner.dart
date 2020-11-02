import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HeadBanner extends StatelessWidget {
  const HeadBanner({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Proverbs 31:9\n",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
                text:
                    "Speak up and judge fairly;\ndefend the rights of the poor and needy."),
          ],
        ),
      ),
    );
  }
}

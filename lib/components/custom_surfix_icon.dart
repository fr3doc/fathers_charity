import 'package:fathers_charity/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSurfixIcon extends StatelessWidget {
  const CustomSurfixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20.0),
        getProportionateScreenWidth(20.0),
        getProportionateScreenWidth(20.0),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18.0),
      ),
    );
  }
}

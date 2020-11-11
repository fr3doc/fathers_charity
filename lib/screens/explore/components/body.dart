import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'explore_grid.dart';
import 'explore_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            ExploreHeader(),
            SizedBox(height: getProportionateScreenHeight(5)),
            ExploreGrid(),
          ],
        ),
      ),
    );
  }
}

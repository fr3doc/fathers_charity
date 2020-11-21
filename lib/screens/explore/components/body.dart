import 'package:fathers_charity/screens/explore/components/explore_staggered_gridview.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'explore_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ExploreHeader(),
          SizedBox(height: getProportionateScreenHeight(10)),
          Expanded(
            child: ExploreStaggeredGridView(),
          ),
        ],
      ),
    );
  }
}

import 'package:fathers_charity/models/campaign/campaign_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'explore_item.dart';

class ExploreStaggeredGridView extends StatelessWidget {
  const ExploreStaggeredGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        itemCount: campaignList.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        itemBuilder: (context, index) => ExploreItem(index),
      ),
    );
  }
}

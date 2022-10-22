import 'package:flutter/material.dart';
import 'package:hr_dashboard/screens/dashboard/model/dashbaord_section_item.dart';

import 'dashboard_section_item_view.dart';

class DashboardGridView extends StatelessWidget {
  final SliverGridDelegate sliverGridDelegate;
  final Axis scrollDirection;
  ScrollPhysics? physics;
  DashboardGridView({
    Key? key,
    this.physics,
    required this.sliverGridDelegate,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: physics,
      scrollDirection: scrollDirection,
      gridDelegate: sliverGridDelegate,
      itemCount: dashbaordSectionList.length,
      itemBuilder: (context, index) {
        return DashboardSectionItemView(
          dashbaordSectionItem: dashbaordSectionList.elementAt(index),
        );
      },
    );
  }
}

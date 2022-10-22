import 'package:flutter/material.dart';
import 'package:hr_dashboard/responsive.dart';

import 'widgets/body.dart';
import 'widgets/side_menu.dart';

class Dashbaord extends StatelessWidget {
  Dashbaord({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: SideMenu(),
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      body: Body(
        onTapMenuView: !Responsive.isMobile(context)
            ? () {}
            : () {
                _key.currentState?.openDrawer();
              },
      ),
    );
  }
}

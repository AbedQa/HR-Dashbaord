import 'package:flutter/material.dart';
import 'package:hr_dashboard/responsive.dart';
import 'package:hr_dashboard/screens/dashboard/dashboard.dart';
import 'package:hr_dashboard/screens/dashboard/widgets/dashboard_body.dart';

import 'dashbaord_app_bar.dart';
import 'side_menu.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.onTapMenuView});
  final VoidCallback onTapMenuView;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Responsive(
      mobile: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: DashbaordAppBar(
                onTapMenuView: onTapMenuView,
              ),
            ),
            const DashbaordBody(),
          ],
        ),
      ),
      tablet: Row(
        children: [
          SideMenu(),
          Expanded(
            child: SizedBox(
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: DashbaordAppBar(
                        onTapMenuView: onTapMenuView,
                      ),
                    ),
                    const DashbaordBody(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      desktop: Row(
        children: [
          if (!Responsive.isMobile(context)) SideMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: DashbaordAppBar(
                      onTapMenuView: onTapMenuView,
                    ),
                  ),
                  const DashbaordBody(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

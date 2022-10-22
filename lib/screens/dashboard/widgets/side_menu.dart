import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_dashboard/constants.dart';
import 'package:hr_dashboard/responsive.dart';
import 'package:hr_dashboard/screens/dashboard/model/side_menu_item.dart';

class SideMenu extends StatefulWidget {
  SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  String itemSelected = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xffFAFAFA),
      width: Responsive.isDesktop(context) ? 242 : 90,
      height: size.height,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const SizedBox(
                  height: 30,
                ),
              if (!Responsive.isDesktop(context))
                const SizedBox(
                  height: 41,
                ),
              Center(
                child: Text(
                  'WeHR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 36 : 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: Responsive.isDesktop(context) ? 59 : 31,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isDesktop(context) ? 33 : 0,
                ),
                child: Column(
                  crossAxisAlignment: Responsive.isDesktop(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                      'MAIN MENU',
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 12 : 10,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor,
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      const SizedBox(
                        height: 29,
                      ),
                    if (!Responsive.isDesktop(context))
                      const SizedBox(
                        height: 23,
                      ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: mainMenuList.length,
                      itemBuilder: (context, index) {
                        return SideMenuItemView(
                          sideMenuItem: mainMenuList.elementAt(index),
                          isSelected: itemSelected ==
                              mainMenuList.elementAt(index).title,
                          onTapView: () {
                            setState(() {
                              itemSelected =
                                  mainMenuList.elementAt(index).title;
                            });
                          },
                        );
                      },
                    ),
                    if (Responsive.isDesktop(context))
                      const SizedBox(
                        height: 68,
                      ),
                    if (!Responsive.isDesktop(context))
                      const SizedBox(
                        height: 42,
                      ),
                    Text(
                      'OTHER',
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 12 : 10,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor,
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      const SizedBox(
                        height: 29,
                      ),
                    if (!Responsive.isDesktop(context))
                      const SizedBox(
                        height: 23,
                      ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: otherList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SideMenuItemView(
                          sideMenuItem: otherList.elementAt(index),
                          isSelected:
                              itemSelected == otherList.elementAt(index).title,
                          onTapView: () {
                            setState(() {
                              itemSelected = otherList.elementAt(index).title;
                            });
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SideMenuItemView extends StatelessWidget {
  final SideMenuItem sideMenuItem;
  final VoidCallback onTapView;
  final bool isSelected;
  const SideMenuItemView({
    Key? key,
    required this.sideMenuItem,
    required this.isSelected,
    required this.onTapView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 32,
      ),
      child: GestureDetector(
        onTap: onTapView,
        child: Row(
          mainAxisAlignment: Responsive.isDesktop(context)
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              sideMenuItem.icon,
              color: isSelected ? kPrimaryColor : kSecondaryColor,
            ),
            if (Responsive.isDesktop(context))
              Row(
                children: [
                  const SizedBox(
                    width: 27,
                  ),
                  Text(
                    sideMenuItem.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? kPrimaryColor : kSecondaryColor,
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}

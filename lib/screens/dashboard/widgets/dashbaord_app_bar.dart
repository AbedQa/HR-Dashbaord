import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_dashboard/responsive.dart';

class DashbaordAppBar extends StatelessWidget {
  const DashbaordAppBar({super.key, required this.onTapMenuView});
  final VoidCallback onTapMenuView;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12.5,
        bottom: 12.5,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 13.5,
              top: 13.5,
            ),
            child: Row(
              children: [
                if (!Responsive.isDesktop(context))
                  GestureDetector(
                      onTap: onTapMenuView,
                      child: SvgPicture.asset('assets/icons/menu.svg')),
                if (Responsive.isMobile(context))
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/icons/search.svg'),
                    ],
                  ),
                if (!Responsive.isMobile(context))
                  Container(
                    width: Responsive.isDesktop(context) ? 343 : 245,
                    height: 34,
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(
                        0xffFAFAFA,
                      ),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: const Color(
                          0xffE0e0e0,
                        ),
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 4,
                          bottom: 17,
                          left: 16,
                          right: 16,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/notification.svg',
                ),
                if (Responsive.isDesktop(context))
                  const SizedBox(
                    width: 36,
                  ),
                if (Responsive.isTablet(context))
                  const SizedBox(
                    width: 30,
                  ),
                if (Responsive.isMobile(context))
                  const SizedBox(
                    width: 20,
                  ),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                ),
                if (Responsive.isDesktop(context))
                  const SizedBox(
                    width: 36,
                  ),
                if (Responsive.isTablet(context))
                  const SizedBox(
                    width: 30,
                  ),
                if (Responsive.isMobile(context))
                  const SizedBox(
                    width: 20,
                  ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  'assets/icons/arrow-down.svg',
                ),
                if (Responsive.isDesktop(context))
                  const SizedBox(
                    width: 36,
                  ),
                if (Responsive.isTablet(context))
                  const SizedBox(
                    width: 30,
                  ),
                if (Responsive.isMobile(context))
                  const SizedBox(
                    width: 20,
                  ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

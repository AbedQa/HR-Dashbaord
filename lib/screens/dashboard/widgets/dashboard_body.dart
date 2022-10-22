import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_dashboard/constants.dart';
import 'package:hr_dashboard/responsive.dart';
import 'package:hr_dashboard/screens/dashboard/model/dashbaord_section_item.dart';
import 'package:hr_dashboard/screens/dashboard/model/employee_overview_item.dart';
import 'package:hr_dashboard/screens/dashboard/widgets/dashboard_section_item_view.dart';
import 'package:hr_dashboard/screens/dashboard/widgets/recent_activity.dart';

import 'announcement_item_view.dart';
import 'dashboard_grid_view.dart';
import 'emplyee_overview_view.dart';

class DashbaordBody extends StatelessWidget {
  const DashbaordBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.only(
        top: 21,
        left: Responsive.isDesktop(context) ? 52 : 20,
        right: Responsive.isDesktop(context) ? 52 : 20,
      ),
      child: Responsive(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: kTertiaryColor,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            DashboardGridView(
              sliverGridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 14,
                childAspectRatio: 0.7,
                mainAxisExtent: 170,
              ),
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
            ),
            const SizedBox(
              height: 16,
            ),
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                childAspectRatio: 0.55,
                mainAxisExtent: 240,
              ),
              itemCount: employeeOverviewItemList.length,
              itemBuilder: (context, index) {
                return EmplyeeOverviewView(
                  size: size,
                  employeeOverviewItem:
                      employeeOverviewItemList.elementAt(index),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 16,
              ),
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Announcement',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kTertiaryColor,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE0E0E0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Today, 13 Sep 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kTertiaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  const Center(
                    child: Text(
                      'See All Announcement',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                ],
              ),
            ),
            RecentActivity(size: size),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 16,
                bottom: 26,
              ),
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Upcoming Schedule',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kTertiaryColor,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE0E0E0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Today, 13 Sep 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kTertiaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  const Center(
                    child: Text(
                      'Creat a New Schedule',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                ],
              ),
            ),
          ],
        ),
        tablet: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: kTertiaryColor,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 165,
              child: DashboardGridView(
                sliverGridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 204,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.7,
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 230,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.55,
                ),
                itemCount: employeeOverviewItemList.length,
                itemBuilder: (context, index) {
                  return EmplyeeOverviewView(
                    size: size,
                    employeeOverviewItem:
                        employeeOverviewItemList.elementAt(index),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 16,
                right: 35,
              ),
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Announcement',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kTertiaryColor,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE0E0E0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Today, 13 Sep 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kTertiaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  const Center(
                    child: Text(
                      'See All Announcement',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 35,
              ),
              child: RecentActivity(size: size),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 16,
                right: 35,
              ),
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Upcoming Schedule',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kTertiaryColor,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE0E0E0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'Today, 13 Sep 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kTertiaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return AnnouncementItemView(size: size);
                    },
                  ),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  const Center(
                    child: Text(
                      'Creat a New Schedule',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                ],
              ),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: kTertiaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 165,
                    child: DashboardGridView(
                      sliverGridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 204,
                        mainAxisSpacing: 14,
                        childAspectRatio: 0.6,
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 230,
                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.5,
                      ),
                      itemCount: employeeOverviewItemList.length,
                      itemBuilder: (context, index) {
                        return EmplyeeOverviewView(
                          size: size,
                          employeeOverviewItem:
                              employeeOverviewItemList.elementAt(index),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 16,
                      right: 35,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffE0E0E0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Announcement',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: kTertiaryColor,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE0E0E0),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Today, 13 Sep 2021',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kTertiaryColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/arrow-down.svg',
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return AnnouncementItemView(size: size);
                          },
                        ),
                        const Divider(
                          color: Color(0xffE0E0E0),
                        ),
                        const Center(
                          child: Text(
                            'See All Announcement',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 9.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      RecentActivity(size: size),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE0E0E0),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Upcoming Schedule',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kTertiaryColor,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xffE0E0E0),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Today, 13 Sep 2021',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kTertiaryColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow-down.svg',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ListView.builder(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 20,
                              ),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return AnnouncementItemView(size: size);
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ListView.builder(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 20,
                              ),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return AnnouncementItemView(size: size);
                              },
                            ),
                            const Divider(
                              color: Color(0xffE0E0E0),
                            ),
                            const Center(
                              child: Text(
                                'Creat a New Schedule',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 9.5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

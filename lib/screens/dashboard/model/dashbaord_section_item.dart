import 'package:flutter/material.dart';
import 'package:hr_dashboard/constants.dart';

class DashbaordSectionItem {
  final String title;
  final String count;
  final String description;
  final Color descriptionColor;
  final Color backgroundColor;

  DashbaordSectionItem({
    required this.title,
    required this.count,
    required this.description,
    required this.descriptionColor,
    required this.backgroundColor,
  });
}

final List<DashbaordSectionItem> dashbaordSectionList = [
  DashbaordSectionItem(
    title: 'Available Position',
    count: '24',
    description: '4 Urgently needed',
    descriptionColor: kPrimaryColor,
    backgroundColor: const Color(0xffFFEFE7),
  ),
  DashbaordSectionItem(
    title: 'Job Open',
    count: '10',
    description: '4 Active hiring',
    descriptionColor: const Color(0xff3786F1),
    backgroundColor: const Color(0xffE8F0FB),
  ),
  DashbaordSectionItem(
    title: 'New Employees',
    count: '24',
    description: '4 Department',
    descriptionColor: const Color(0xffEE61CF),
    backgroundColor: const Color(0xffFDEBF9),
  ),
];

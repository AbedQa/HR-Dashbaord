import 'package:flutter/material.dart';
import 'package:hr_dashboard/constants.dart';
import 'package:hr_dashboard/screens/dashboard/model/dashbaord_section_item.dart';

class DashboardSectionItemView extends StatelessWidget {
  final DashbaordSectionItem dashbaordSectionItem;
  const DashboardSectionItemView({
    Key? key,
    required this.dashbaordSectionItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 204,
      padding: const EdgeInsets.only(
        top: 12,
        left: 20,
        right: 20,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: dashbaordSectionItem.backgroundColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dashbaordSectionItem.title,
            style: const TextStyle(
              color: kTertiaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            dashbaordSectionItem.count,
            style: const TextStyle(
              color: kTertiaryColor,
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            dashbaordSectionItem.description,
            style: TextStyle(
              color: dashbaordSectionItem.descriptionColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hr_dashboard/constants.dart';
import 'package:hr_dashboard/screens/dashboard/model/employee_overview_item.dart';

class EmplyeeOverviewView extends StatelessWidget {
  const EmplyeeOverviewView({
    Key? key,
    required this.size,
    required this.employeeOverviewItem,
  }) : super(key: key);

  final Size size;
  final EmployeeOverviewItem employeeOverviewItem;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            employeeOverviewItem.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kTertiaryColor,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            employeeOverviewItem.count,
            style: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w500,
              color: kTertiaryColor,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    employeeOverviewItem.manTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kSecondaryColor,
                    ),
                  ),
                  Text(
                    employeeOverviewItem.womanTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kSecondaryColor,
                    ),
                  )
                ],
              ),
              Container(
                color: const Color(0xffFFEFE7),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  employeeOverviewItem.monthPercentage,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class EmployeeOverviewItem {
  final String title;
  final String count;
  final String manTitle;
  final String womanTitle;
  final String monthPercentage;

  EmployeeOverviewItem({
    required this.title,
    required this.count,
    required this.manTitle,
    required this.womanTitle,
    required this.monthPercentage,
  });
}

final List<EmployeeOverviewItem> employeeOverviewItemList = [
  EmployeeOverviewItem(
    title: 'Total Employees',
    count: '216',
    manTitle: '120 Men',
    womanTitle: '96 Women',
    monthPercentage: '+2% Past month',
  ),
  EmployeeOverviewItem(
    title: 'Talent Request',
    count: '16',
    manTitle: '6 Men',
    womanTitle: '10 Women',
    monthPercentage: '+5% Past month',
  ),
];

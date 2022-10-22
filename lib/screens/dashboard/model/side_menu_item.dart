class SideMenuItem {
  final String icon;
  final String title;

  SideMenuItem(
    this.icon,
    this.title,
  );
}

final List<SideMenuItem> mainMenuList = [
  SideMenuItem(
    'assets/icons/dashboard.svg',
    'Dashboard',
  ),
  SideMenuItem(
    'assets/icons/recruitment.svg',
    'Recruitment',
  ),
  SideMenuItem(
    'assets/icons/schedule.svg',
    'Schedule',
  ),
  SideMenuItem(
    'assets/icons/employee.svg',
    'Employee',
  ),
  SideMenuItem(
    'assets/icons/department.svg',
    'Department',
  ),
];

final List<SideMenuItem> otherList = [
  SideMenuItem(
    'assets/icons/support.svg',
    'Support',
  ),
  SideMenuItem(
    'assets/icons/settings.svg',
    'Settings',
  ),
];

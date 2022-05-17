import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/controllers/navigation_controller.dart';

import '../theme/text_theme.dart';

class AppBottomNavigation extends GetView<NavigationController> {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return NavigationBar(
        selectedIndex: controller.selectedNavigationDestination.value,
        onDestinationSelected: controller.onBottomNavigationSelected,
        destinations: controller.drawerNavigationItems.map((item) {
          return NavigationDestination(
            icon: Icon(item.icon),
            selectedIcon: Icon(item.activeIcon),
            label: item.title,
          );
        }).toList(),
      );
    });
  }
}

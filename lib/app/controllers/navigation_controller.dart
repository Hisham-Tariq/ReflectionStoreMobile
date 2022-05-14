import 'package:flutter/material.dart' hide Stack;
import 'package:get/get.dart';
import '../ui_models/drawer_navigation_item.dart';
import '../data/drawer_navigations.dart' as drawerNavigations;
import '../utils/utils.dart';

class NavigationController extends GetxController {
  final scaffoldState = GlobalKey<ScaffoldState>();
  var navigationStack = StackData<DrawerNavigationItem>();
  late List<DrawerNavigationItem> drawerNavigationItems = drawerNavigations.drawerNavigationItems;
  late final Rx<DrawerNavigationItem> selectedDrawerItem;

  @override
  onInit() {
    super.onInit();
    drawerNavigationItems.first.isSelected = true;
    selectedDrawerItem = drawerNavigationItems.first.obs;
  }

  onDrawerItemClicked(DrawerNavigationItem item) async {
    if (item.title == selectedDrawerItem.value.title) {
      return;
    }
    Get.back();
    if (selectedDrawerItem.value.onClose != null) await selectedDrawerItem.value.onClose!();
    await Future.delayed(const Duration(milliseconds: 250));
    if (item.onTap != null || item.itemType == DrawerItemType.callAble) {
      item.onTap!();
    }
    if (item.itemType == DrawerItemType.viewBased) {
      navigationStack.push(selectedDrawerItem.value);
      for (DrawerNavigationItem drawerItem in drawerNavigationItems) {
        drawerItem.isSelected = drawerItem.title == item.title;
        if (drawerItem.title == item.title) {
          selectedDrawerItem.value = drawerItem;
        }
      }
      update();
    }
  }

  goToBackItem(DrawerNavigationItem item) async {
    if (selectedDrawerItem.value.onClose != null) await selectedDrawerItem.value.onClose!();

    if (item.itemType == DrawerItemType.viewBased) {
      for (DrawerNavigationItem drawerItem in drawerNavigationItems) {
        drawerItem.isSelected = drawerItem.title == item.title;
        if (drawerItem.title == item.title) {
          if (drawerItem.onTap != null) drawerItem.onTap!();
          selectedDrawerItem.value = drawerItem;
        }
      }
      update();
    }
  }

}

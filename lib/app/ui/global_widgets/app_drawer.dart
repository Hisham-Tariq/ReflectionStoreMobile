import '../../controllers/navigation_controller.dart';
import '../../ui_models/drawer_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/text_theme.dart';
import 'spacers.dart';

class AppDrawer extends GetView<NavigationController> {
  const AppDrawer({Key? key}) : super(key: key);
  final appNameSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      initState: (_) {},
      builder: (_) {
        return Drawer(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: [
                      Text(
                        "A",
                        style: AppTextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: appNameSize,
                          color: context.theme.colorScheme.primary,
                        ),
                      ),
                      Text(
                        "PP ",
                        style: AppTextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: appNameSize,
                        ),
                      ),
                      Text(
                        "N",
                        style: AppTextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: appNameSize,
                          color: context.theme.colorScheme.primary,
                        ),
                      ),
                      Text(
                        "AME",
                        style: AppTextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: appNameSize,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
                const SizedBox(height: 20),
                for (DrawerNavigationItem item in controller.drawerNavigationItems)
                  _DrawerTile(
                    item: item,
                    onTap: () =>  controller.onDrawerItemClicked(item),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _DrawerTile extends StatelessWidget {
  const _DrawerTile({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final DrawerNavigationItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          ListTile(
            title: Text(item.title),
            leading: Icon(item.icon),
            selected: item.isSelected,
            // selectedColor: context.theme.colorScheme.onPrimary,
            // selectedTileColor: context.theme.colorScheme.primary,
            selectedColor: context.theme.colorScheme.primary,
            selectedTileColor: context.theme.colorScheme.primary.withOpacity(0.2),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
              right: Radius.circular(9999.0),
            )),
            onTap: onTap,
          ),
          const VerticalSpacer(space: 1),
        ],
      ),
    );
  }
}

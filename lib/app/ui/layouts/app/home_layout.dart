import 'dart:async';
import 'package:flutter/services.dart';

import '../../../controllers/controllers.dart';
import '../../global_widgets/app_drawer.dart';
import '../../global_widgets/global_widgets.dart';
import '../../theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HomeLayout extends GetView<NavigationController> {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.navigationStack.isEmpty) {
          var homeController = Get.find<HomeController>();
          if (homeController.doubleTapBackTimer == null) {
            homeController.doubleTapBackTimer = Timer(const Duration(milliseconds: 1500), () {
              homeController.doubleTapBackTimer = null;
            });
            Fluttertoast.showToast(msg: "Tap again to exit");
          } else {
            return Future.value(true);
          }
        } else {
          await controller.goToBackItem(controller.navigationStack.pop());
        }

        return Future.value(false);
      },
      child: Obx(
        () => Scaffold(
          key: controller.scaffoldState,
          drawer: const AppDrawer(),
          appBar: controller.selectedDrawerItem.value.showAppBar
              ? AppBar(
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  title: Text(
                    controller.selectedDrawerItem.value.title,
                    style: AppTextStyle(
                      color: context.theme.colorScheme.onPrimary,
                      fontSize: 16,
                    ),
                  ),
                )
              : null,
          body: controller.selectedDrawerItem.value.widget,
        ),
      ),
    );
  }
}

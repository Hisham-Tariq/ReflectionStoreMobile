export 'stack.dart';
export 'random.dart';
export 'snackbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class ResponsiveSize {
  static double height(double num) {
    // "Phsycial Height: ".printInfo();
    // Get.window.physicalSize.height.printInfo();
    // "Simple Height: ".printInfo();
    // Get.height.printInfo();

    // "Phsycial Widht: ".printInfo();
    // Get.window.physicalSize.width.printInfo();
    // "Simple width: ".printInfo();
    // Get.width.printInfo();
    return (Get.window.physicalSize.height / 812) * num;
  }

  static double width(double num) {
    return (Get.window.physicalSize.width / 375) * num;
  }
}



showFullScreenLoadingDialog() {
  Get.generalDialog(
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: SpinKitCircle(
          color: Get.context!.theme.colorScheme.primary,
        ),
      );
    },
    barrierColor: Colors.black.withOpacity(0.5),
  );
}

dismissDialog() {
  if (Get.isDialogOpen!) {
    Get.back();
  }
}

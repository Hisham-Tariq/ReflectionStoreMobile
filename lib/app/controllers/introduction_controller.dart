import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
class IntroductionController extends GetxController {
  var currentPage = 0;
  final PageController pageController = PageController(
      initialPage: 0
  );
  onInit(){
    super.onInit();

  }

  goToGettinStartedPage(){
    Get.offAllNamed(AppRoutes.GETTING_STARTED);
  }
  onClose(){
    pageController.dispose();
  }

  onPageChange(int value) {
    currentPage = value;
    update();
  }
}
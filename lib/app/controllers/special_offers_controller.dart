
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class SpecialOffersController extends GetxController {

  var currentPage = 0;
  final PageController pageController = PageController(
      initialPage: 0
  );
  onPageChange(int value) {
    currentPage = value;
    update();
  }
}

import 'package:get/get.dart';

import '../routes/app_routes.dart';
class LogInEmailController extends GetxController {

  void goToHomeScreen() {
    Get.offAllNamed(AppRoutes.HOME);
  }

  void goToForgetPasswordScreen() {
    Get.offAllNamed(AppRoutes.FORGET_PASSWORD);
  }
}
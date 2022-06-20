
import 'package:get/get.dart';

import '../routes/app_routes.dart';
class ConfirmPasswordController extends GetxController {
  goToSignUpScreen() {
    Get.offAllNamed(AppRoutes.CREATE_ACCOUNT);
  }

  void goToSuccessPage() {
    Get.offAllNamed(AppRoutes.SUCCESSFULLY_CREATE_ACCOUNT);
  }
}
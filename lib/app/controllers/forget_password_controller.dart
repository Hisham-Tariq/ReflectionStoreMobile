
import 'package:get/get.dart';

import '../routes/app_routes.dart';
class ForgetPasswordController extends GetxController {
  goToSignUpScreen() {
    Get.offAllNamed(AppRoutes.CREATE_ACCOUNT);
  }

   goToConfirmPasswordScreen() {
     Get.offAllNamed(AppRoutes.CONFIRM_PASSWORD);
  }
}
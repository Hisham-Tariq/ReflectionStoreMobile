import 'package:get/get.dart';

import '../routes/app_routes.dart';
class GettingStartedController extends GetxController {
  goToLoginScreen(){
    Get.offAllNamed(AppRoutes.LOG_IN_EMAIL);
  }
  goToSignUpScreen()
  {
    Get.offAllNamed(AppRoutes.CREATE_ACCOUNT);
  }
}
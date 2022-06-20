
import 'package:get/get.dart';

import '../routes/app_routes.dart';
class SuccessfullyCreateAccountController extends GetxController {
  goToHomePage() {
    Get.offAllNamed(AppRoutes.HOME);
  }
}
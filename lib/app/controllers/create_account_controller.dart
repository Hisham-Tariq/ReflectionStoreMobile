
import 'package:get/get.dart';

import '../routes/app_routes.dart';
class CreateAccountController extends GetxController {
  goToHomeScreen(){
    Get.offAllNamed(AppRoutes.HOME);
  }
}

import 'package:get/get.dart';
import '../controllers/confirm_password_controller.dart';


class ConfirmPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmPasswordController>(() => ConfirmPasswordController());
        // Get.put<ConfirmPasswordController>(ConfirmPasswordController());
  }
}
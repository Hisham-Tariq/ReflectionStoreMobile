
import 'package:get/get.dart';
import '../controllers/successfully_create_account_controller.dart';


class SuccessfullyCreateAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessfullyCreateAccountController>(() => SuccessfullyCreateAccountController());
        // Get.put<SuccessfullyCreateAccountController>(SuccessfullyCreateAccountController());
  }
}
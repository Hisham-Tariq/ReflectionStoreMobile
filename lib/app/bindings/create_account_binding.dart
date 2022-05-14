
import 'package:get/get.dart';
import '../controllers/create_account_controller.dart';


class CreateAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccountController>(() => CreateAccountController());
        // Get.put<CreateAccountController>(CreateAccountController());
  }
}
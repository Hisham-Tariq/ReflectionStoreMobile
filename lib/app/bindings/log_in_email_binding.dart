
import 'package:get/get.dart';
import '../controllers/log_in_email_controller.dart';


class LogInEmailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogInEmailController>(() => LogInEmailController());
        // Get.put<LogInEmailController>(LogInEmailController());
  }
}
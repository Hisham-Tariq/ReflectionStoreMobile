
import 'package:get/get.dart';
import '../controllers/checkout_controller.dart';


class CheckoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(() => CheckoutController());
        // Get.put<CheckoutController>(CheckoutController());
  }
}
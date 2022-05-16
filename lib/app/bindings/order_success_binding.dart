
import 'package:get/get.dart';
import '../controllers/order_success_controller.dart';


class OrderSuccessBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderSuccessController>(() => OrderSuccessController());
        // Get.put<OrderSuccessController>(OrderSuccessController());
  }
}
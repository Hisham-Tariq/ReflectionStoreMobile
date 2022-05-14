
import 'package:get/get.dart';
import '../controllers/order_detail_controller.dart';


class OrderDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailController>(() => OrderDetailController());
        // Get.put<OrderDetailController>(OrderDetailController());
  }
}
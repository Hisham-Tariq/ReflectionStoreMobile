
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';


class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
        // Get.put<CartController>(CartController());
  }
}
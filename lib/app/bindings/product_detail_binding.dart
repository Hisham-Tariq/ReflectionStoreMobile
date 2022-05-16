
import 'package:get/get.dart';
import '../controllers/product_detail_controller.dart';


class ProductDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailController>(() => ProductDetailController());
        // Get.put<ProductDetailController>(ProductDetailController());
  }
}
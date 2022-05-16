
import 'package:get/get.dart';
import '../controllers/products_controller.dart';


class ProductsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsController>(() => ProductsController());
        // Get.put<ProductsController>(ProductsController());
  }
}
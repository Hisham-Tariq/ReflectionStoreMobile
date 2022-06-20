
import 'package:get/get.dart';
import '../controllers/wishlist_controller.dart';


class WishlistBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(() => WishlistController());
        // Get.put<WishlistController>(WishlistController());
  }
}
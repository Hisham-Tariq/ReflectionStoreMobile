
import 'package:get/get.dart';
import '../controllers/favorites_controller.dart';


class FavoritesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesController>(() => FavoritesController());
        // Get.put<FavoritesController>(FavoritesController());
  }
}
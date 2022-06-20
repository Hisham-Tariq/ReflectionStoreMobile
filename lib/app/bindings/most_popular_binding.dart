
import 'package:get/get.dart';
import '../controllers/most_popular_controller.dart';


class MostPopularBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MostPopularController>(() => MostPopularController());
        // Get.put<MostPopularController>(MostPopularController());
  }
}
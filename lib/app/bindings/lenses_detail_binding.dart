
import 'package:get/get.dart';
import '../controllers/lenses_detail_controller.dart';


class LensesDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LensesDetailController>(() => LensesDetailController());
        // Get.put<LensesDetailController>(LensesDetailController());
  }
}
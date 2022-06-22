
import 'package:get/get.dart';
import '../controllers/glassess_detail_controller.dart';


class GlassessDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlassessDetailController>(() => GlassessDetailController());
        // Get.put<GlassessDetailController>(GlassessDetailController());
  }
}
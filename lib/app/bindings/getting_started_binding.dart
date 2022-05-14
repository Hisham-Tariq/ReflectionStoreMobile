
import 'package:get/get.dart';
import '../controllers/getting_started_controller.dart';


class GettingStartedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GettingStartedController>(() => GettingStartedController());
        // Get.put<GettingStartedController>(GettingStartedController());
  }
}
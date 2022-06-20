
import 'package:get/get.dart';
import '../controllers/special_offers_controller.dart';


class SpecialOffersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialOffersController>(() => SpecialOffersController());
        // Get.put<SpecialOffersController>(SpecialOffersController());
  }
}
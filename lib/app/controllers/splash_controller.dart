
import 'package:get/get.dart';
import 'package:my_app/app/routes/app_routes.dart';
class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.HOME);
    });
  }

}
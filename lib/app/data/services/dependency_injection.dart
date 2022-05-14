import '../../controllers/navigation_controller.dart';
import '../../controllers/main_controller.dart';
import 'package:get/get.dart';
import 'package:my_app/app/ui/theme/theme_controller.dart';

class DependecyInjection {
  static void init() {
    Get.put<NavigationController>(NavigationController());
    Get.put<MainController>(MainController());
    Get.put<ThemeController>(ThemeController());
    // Get.put(AuthenticationController(), permanent: true);
    // Get.put(UserController(), permanent: true);
  }
}
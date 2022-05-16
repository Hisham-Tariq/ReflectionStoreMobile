import '../bindings/products_binding.dart';
import '../ui/pages/products_page/products_page.dart';
      import '../bindings/order_success_binding.dart';
import '../ui/pages/order_success_page/order_success_page.dart';
      import '../bindings/product_detail_binding.dart';
import '../ui/pages/product_detail_page/product_detail_page.dart';
      import '../bindings/favorites_binding.dart';
import '../ui/pages/favorites_page/favorites_page.dart';
      import '../bindings/order_detail_binding.dart';
import '../ui/pages/order_detail_page/order_detail_page.dart';
      import '../bindings/notifications_binding.dart';
import '../ui/pages/notifications_page/notifications_page.dart';
      import '../bindings/successfully_create_account_binding.dart';
import '../ui/pages/successfully_create_account_page/successfully_create_account_page.dart';
      import '../bindings/introduction_binding.dart';
import '../ui/pages/introduction_page/introduction_page.dart';
      import '../bindings/getting_started_binding.dart';
import '../ui/pages/getting_started_page/getting_started_page.dart';
      import '../bindings/create_account_binding.dart';
import '../ui/pages/create_account_page/create_account_page.dart';
      import '../bindings/log_in_email_binding.dart';
import '../ui/pages/log_in_email_page/log_in_email_page.dart';
      import '../bindings/introduction_binding.dart';
import '../ui/pages/introduction_page/introduction_page.dart';
      import 'package:my_app/app/ui/layouts/app/home_layout.dart';

import '../bindings/setting_binding.dart';
import '../ui/pages/setting_page/setting_page.dart';
      import '../bindings/splash_binding.dart';
import '../ui/pages/splash_page/splash_page.dart';
      import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/home_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import 'app_routes.dart';

final _defaultTransition = Transition.native;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.UNKNOWN,
    page: () => UnknownRoutePage(),
    transition: _defaultTransition,
  );

  static final List<GetPage> pages = [
    unknownRoutePage,
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeLayout(),
      binding: HomeBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.SETTING,
      page: () => const SettingPage(),
      binding: SettingBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.INTRODUCTION,
      page: () => IntroductionPage(),
      binding: IntroductionBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.LOG_IN_EMAIL,
      page: () => LogInEmailPage(),
      binding: LogInEmailBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.CREATE_ACCOUNT,
      page: () => CreateAccountPage(),
      binding: CreateAccountBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.GETTING_STARTED,
      page: () => GettingStartedPage(),
      binding: GettingStartedBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.INTRODUCTION,
      page: () => IntroductionPage(),
      binding: IntroductionBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.SUCCESSFULLY_CREATE_ACCOUNT,
      page: () => SuccessfullyCreateAccountPage(),
      binding: SuccessfullyCreateAccountBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.NOTIFICATIONS,
      page: () => NotificationsPage(),
      binding: NotificationsBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.ORDER_DETAIL,
      page: () => OrderDetailPage(),
      binding: OrderDetailBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.FAVORITES,
      page: () => FavoritesPage(),
      binding: FavoritesBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.PRODUCT_DETAIL,
      page: () => ProductDetailPage(),
      binding: ProductDetailBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.ORDER_SUCCESS,
      page: () => OrderSuccessPage(),
      binding: OrderSuccessBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.PRODUCTS,
      page: () => ProductsPage(),
      binding: ProductsBinding(),
      transition: _defaultTransition,
    ), 
];
}
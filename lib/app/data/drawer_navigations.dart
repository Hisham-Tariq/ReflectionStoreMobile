import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_review/in_app_review.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/setting_page/setting_page.dart';
import '../ui_models/drawer_navigation_item.dart';

final List<DrawerNavigationItem> drawerNavigationItems = [
  DrawerNavigationItem(
    "Home",
    Icons.home,
    DrawerItemType.viewBased,
    widget: const HomePage(),
  ),
  // DrawerNavigationItem(
  //   "Create Survey",
  //   Icons.add_box_outlined,
  //   DrawerItemType.viewBased,
  //   widget: const CreateSurveyPage(),
  //   onTap: () {
  //     if (Get.isRegistered<CreateSurveyController>()) {
  //       var controller = Get.find<CreateSurveyController>();
  //       if (controller.surveyMode == "new") {
  //         controller.getSurveyQuestions();
  //       }
  //     }
  //   },
  //   onClose: () async {
  //     var controller = Get.find<CreateSurveyController>();
  //     await controller.onClosingCreateSurvey();
  //     controller.surveyQuestions = [];
  //     controller.totalScore = 0.0;
  //     controller.schoolInformation = SchoolInformationModel.empty();
  //     controller.paymentInformation = PaymentModel.empty();
  //     controller.isFetching = true;
  //     return Future.value(true);
  //   },
  // ),
  // New Trip
  // DrawerNavigationItem(
  //   "My Surveys",
  //   Icons.task,
  //   DrawerItemType.viewBased,
  //   widget: const MySurverysPage(),
  //   onTap: () {
  //     if (Get.isRegistered<MySurveysController>()) {
  //       var controller = Get.find<MySurveysController>();
  //       if (controller.surveyList.isEmpty) {
  //         controller.getSurveyList();
  //       }
  //     }
  //   },
  // ),
  // DrawerNavigationItem(
  //   "Drafts",
  //   Icons.task,
  //   DrawerItemType.viewBased,
  //   widget: const SurveyDraftsPage(),
  //   onTap: () {
  //     if (Get.isRegistered<SurveyDraftController>()) {
  //       var controller = Get.find<SurveyDraftController>();
  //       controller.readAll();
  //     }
  //   },
  // ),
  // DrawerNavigationItem(
  //   "Profile",
  //   Icons.person_outline,
  //   DrawerItemType.viewBased,
  //   widget: const ProfilePage(),
  // ),
  DrawerNavigationItem(
    "Rate Us",
    Icons.star,
    DrawerItemType.callAble,
    onTap: () async {
      final InAppReview inAppReview = InAppReview.instance;
      // inAppReview.openStoreListing(); // eMoves the user to playstor
      if (await inAppReview.isAvailable()) {
        inAppReview.requestReview();
      }
    },
  ),

  DrawerNavigationItem(
    "Setting",
    Icons.settings,
    DrawerItemType.viewBased,
    widget: const SettingPage(),
  ),
  DrawerNavigationItem(
    "Sign Out",
    Icons.exit_to_app,
    DrawerItemType.callAble,
    onTap: () async {
      Fluttertoast.showToast(msg: "Logging Out User");
    },
  ),
];

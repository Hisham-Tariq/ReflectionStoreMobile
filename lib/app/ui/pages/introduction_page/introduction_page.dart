import 'package:flutter_svg/svg.dart';
import 'package:my_app/app/ui/global_widgets/spacers.dart';
import 'package:sizer/sizer.dart';
import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/introduction_controller.dart';
import '../../helpers/Strings.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';


//
// class IntroductionPage extends GetView<IntroductionController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Flexible(
//             child: PageView(
//               onPageChanged: controller.onPageChange,
//               controller: controller.pageController,
//               children: <Widget>[
//                 _IntroductionSplashPageView(
//                     imagePath: Assets.svg.productTour.path,
//                     title: Strings.stepOneTitle,
//                     content: Strings.stepOneContent),
//                 _IntroductionPageView(
//                     imagePath: Assets.svg.favourites.path,
//                     title: Strings.stepTwoTitle,
//                     content: Strings.stepTwoContent),
//                 _IntroductionPageView(
//                     imagePath: Assets.svg.favourites.path,
//                     title: Strings.stepThreeTitle,
//                     content: Strings.stepThreeContent),
//               ],
//             ),
//           ),
//           GetBuilder<IntroductionController>(builder: (logic) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: _PageViewIndicators(
//                 activeIndex: logic.currentPage,
//                 totalPages: 3,
//                 indicatorColor: AppColors(context).primary,
//               ),
//             );
//           })
//         ],
//       ),
//     );
//   }
// }
//
// class _IntroductionSplashPageView extends GetView<IntroductionController>  {
//   const _IntroductionSplashPageView(
//       {Key? key,
//         required this.imagePath,
//         required this.title,
//         required this.content})
//       : super(key: key);
//
//   final String imagePath;
//   final String title, content;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 30.0, right: 30),
//             child: InkWell(
//               onTap: (){},
//               child: Container(
//                 width: 80,
//                 height: 30,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   color: AppColors(context).primary.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(9999),
//                 ),
//                 child: InkWell(
//                   onTap: controller.goToGettinStartedPage,
//                   child: Text(
//                     'Skip',
//                     style: AppTextStyle(
//                       fontSize: 12.sp,
//                       color: AppColors(context).primary,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
//             child: SvgPicture.asset(imagePath,
//                 height: 30.h, alignment: Alignment.center),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
//             child: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: AppTextStyle(
//                 fontWeight: FontWeight.w900,
//                 fontSize: 18.sp,
//               ),
//             ),
//           ),
//           const VerticalSpacer(),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20),
//             child: Text(
//               content,
//               textAlign: TextAlign.center,
//               style: AppTextStyle(
//                 fontSize: 10.sp,
//                 color: AppColors(context).grey400,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// class _IntroductionPageView extends GetView<IntroductionController>  {
//   const _IntroductionPageView(
//       {Key? key,
//         required this.imagePath,
//         required this.title,
//         required this.content})
//       : super(key: key);
//
//   final String imagePath;
//   final String title, content;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 30.0, right: 30),
//             child: InkWell(
//               onTap: (){},
//               child: Container(
//                 width: 80,
//                 height: 30,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   color: AppColors(context).primary.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(9999),
//                 ),
//                 child: InkWell(
//                   onTap: controller.goToGettinStartedPage,
//                   child: Text(
//                     'Skip',
//                     style: AppTextStyle(
//                       fontSize: 12.sp,
//                       color: AppColors(context).primary,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
//             child: SvgPicture.asset(imagePath,
//                 height: 40.h, alignment: Alignment.center),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
//             child: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: AppTextStyle(
//                 fontWeight: FontWeight.w900,
//                 fontSize: 18.sp,
//               ),
//             ),
//           ),
//           const VerticalSpacer(),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20),
//             child: Text(
//               content,
//               textAlign: TextAlign.center,
//               style: AppTextStyle(
//                 fontSize: 10.sp,
//                 color: AppColors(context).grey400,
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
//             child: TextButton(
//               onPressed: controller.goToGettinStartedPage,
//               style: TextButton.styleFrom(
//                 minimumSize: Size(Get.width, 60),
//                 backgroundColor: context.theme.colorScheme.primary,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//               ),
//               child: Text(
//                 'Continue',
//                 style: AppTextStyle(
//                   color: context.theme.colorScheme.onPrimary,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _PageViewIndicators extends StatelessWidget {
//   const _PageViewIndicators(
//       {Key? key, required this.activeIndex, required this.totalPages, required this.indicatorColor})
//       : super(key: key);
//   final int activeIndex;
//   final int totalPages;
//   final Color indicatorColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         for (int i = 0; i < totalPages; i++)
//           AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             height: 6,
//             width: i == activeIndex ? 30 : 6,
//             margin: const EdgeInsets.only(right: 5),
//             decoration: BoxDecoration(
//               color: indicatorColor,
//               borderRadius: BorderRadius.circular(5),
//             ),
//           ),
//       ],
//     );
//   }
// }
//
//
//
//
//
//
//
//
//











class IntroductionPage extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: PageView(
              onPageChanged: controller.onPageChange,
              controller: controller.pageController,
              children: <Widget>[
                _IntroductionPageView(
                    imagePath: Assets.svg.productTour.path,
                    title: Strings.stepOneTitle,
                    content: Strings.stepOneContent),
                _IntroductionPageView(
                    imagePath: Assets.svg.favourites.path,
                    title: Strings.stepTwoTitle,
                    content: Strings.stepTwoContent),
              ],
            ),
          ),
          GetBuilder<IntroductionController>(builder: (logic) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _PageViewIndicators(
                activeIndex: logic.currentPage,
                totalPages: 2,
                indicatorColor: AppColors(context).primary,
              ),
            );
          })
        ],
      ),
    );
  }
}

class _IntroductionPageView extends GetView<IntroductionController>  {
  const _IntroductionPageView(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.content})
      : super(key: key);

  final String imagePath;
  final String title, content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 30),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: 80,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors(context).primary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(9999),
                ),
                child: InkWell(
                  onTap: controller.goToGettinStartedPage,
                  child: Text(
                    'Skip',
                    style: AppTextStyle(
                      fontSize: 12.sp,
                      color: AppColors(context).primary,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18.sp,
              ),
            ),
          ),
          const VerticalSpacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: AppTextStyle(
                fontSize: 10.sp,
                color: AppColors(context).grey400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: SvgPicture.asset(imagePath,
                height: 50.h, alignment: Alignment.center),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
            child: TextButton(
              onPressed: controller.goToGettinStartedPage,
              style: TextButton.styleFrom(
                minimumSize: Size(Get.width, 60),
                backgroundColor: context.theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Get Started',
                style: AppTextStyle(
                  color: context.theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PageViewIndicators extends StatelessWidget {
  const _PageViewIndicators(
      {Key? key, required this.activeIndex, required this.totalPages, required this.indicatorColor})
      : super(key: key);
  final int activeIndex;
  final int totalPages;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < totalPages; i++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 6,
            width: i == activeIndex ? 30 : 6,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: indicatorColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
      ],
    );
  }
}

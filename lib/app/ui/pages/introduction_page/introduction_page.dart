import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/introduction_controller.dart';
import '../../helpers/Strings.dart';
import '../../theme/text_theme.dart';


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
                    imagePath: Assets.svg.product_tour.path,
                    title: Strings.stepOneTitle,
                    content: Strings.stepOneContent),
                _IntroductionPageView(
                    imagePath: Assets.svg.favourites.path,
                    title: Strings.stepTwoTitle,
                    content: Strings.stepTwoContent),
              ],
            ),
          ),
          Container(
            child: GetBuilder<IntroductionController>(builder: (logic) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildIndicator(),
              );
            }),
          )
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 2; i++) {
      if (controller.currentPage == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class _IntroductionPageView extends StatelessWidget {
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
            padding: const EdgeInsets.only(top:30.0, right: 30),
            child: Text(
              'Skip',
              style: AppTextStyle(
                fontSize: 12.sp,
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0, right: 20, top: 40),
            child: Text(
              title,
              style: AppTextStyle(
                fontWeight: FontWeight.w900,
                color: context.theme.colorScheme.primary,
                fontSize: 18.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0, right: 20),
            child: Text(
              content,
              style: AppTextStyle(
                fontSize: 10.sp,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SvgPicture.asset(imagePath,height: 50.h,alignment: Alignment.center),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
            child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                minimumSize: Size(Get.width, 60),
                backgroundColor: context.theme.colorScheme.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

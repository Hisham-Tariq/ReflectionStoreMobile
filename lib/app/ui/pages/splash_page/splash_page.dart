import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global_widgets/spacers.dart';
import '../../theme/text_theme.dart';
import '../../../controllers/splash_controller.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 40.w,
            ),
            const VerticalSpacer(),
            Text(
              'Splash Page',
              style: AppTextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

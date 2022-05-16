import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/assets/assets.gen.dart';
import '../../theme/text_theme.dart';
import '../../../controllers/splash_controller.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Assets.svg.logo.svg(
                width: 200,
                height: 140,
                fit: BoxFit.contain,
                color: context.theme.colorScheme.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Reflection Store',
                style: AppTextStyle(
                  color: context.theme.colorScheme.primary,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

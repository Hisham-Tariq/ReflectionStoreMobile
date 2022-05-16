import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/getting_started_controller.dart';
import '../../theme/text_theme.dart';

class GettingStartedPage extends GetView<GettingStartedController> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  'Let\'s Get Started',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(40, 24, 40, 0),
                child: Text(
                  'Signup and Login to see what happening near you',
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Assets.svg.shopping.svg(
                  width: 200,
                  height: 260,
                  fit: BoxFit.contain,
                ),
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
                    'Continue With Email',
                    style: AppTextStyle(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                child: TextButton.icon(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    backgroundColor: context.theme.colorScheme.onSecondary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  label: Text(
                    'Continue With Google',
                    style: AppTextStyle(
                      color: Colors.white,
                    ),
                  ), icon: const FaIcon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.white,
                  size: 22,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                child: TextButton.icon(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    backgroundColor: context.theme.colorScheme.onSecondary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Colors.white,
                    size: 22,
                  ),
                  label: Text(
                    'Continue With FaceBook',
                    style: AppTextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 25, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      textAlign: TextAlign.center,
                      style: AppTextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        'Sign Up',
                        style: AppTextStyle(color: context.theme.colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

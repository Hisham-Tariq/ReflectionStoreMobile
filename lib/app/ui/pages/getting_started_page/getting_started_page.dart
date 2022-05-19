import 'package:my_app/app/ui/global_widgets/spacers.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/getting_started_controller.dart';
import '../../../routes/app_routes.dart';
import '../../global_widgets/social_auth_button.dart';
import '../../theme/text_theme.dart';

class GettingStartedPage extends GetView<GettingStartedController> {
  const GettingStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Let\'s Get Started',
                  style: AppTextStyle(
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
                    color: AppColors(context).grey400,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Assets.svg.shopping.svg(
                  width: 100.w,
                  height: 30.h,
                  fit: BoxFit.contain,
                ),
              ),
              const VerticalSpacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                  onPressed: controller.goToLoginScreen,
                  style: TextButton.styleFrom(minimumSize: Size(Get.width, 60)),
                  child: const Text('Continue With Email'),
                ),
              ),
              const VerticalSpacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SocialAuthButtons(
                  icon: FontAwesomeIcons.googlePlusG,
                  text: 'Sign In with Google',
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                child: SocialAuthButtons(
                  icon: FontAwesomeIcons.facebookSquare,
                  text: 'Sign In with FaceBook',
                  onPressed: () {},
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
                    GestureDetector(
                      onTap: controller.goToSignUpScreen,
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

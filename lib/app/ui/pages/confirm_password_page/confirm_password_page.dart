import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../global_widgets/spacers.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/confirm_password_controller.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';

class ConfirmPasswordPage extends GetView<ConfirmPasswordController> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalSpacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          'Confirm Password',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Please enter your new password',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            fontSize: 10.sp,
                            color: AppColors(context).grey400,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: ValueBuilder<bool?>(
                      initialValue: true,
                      builder: (value, updateFn) {
                        value ??= false;
                        return TextFormField(
                          obscureText: value,
                          obscuringCharacter: '⬤',
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(
                              value ? FontAwesomeIcons.lock : FontAwesomeIcons.lock,
                              size: 18,
                            ),
                            suffixIcon: InkWell(
                              onTap: () => updateFn(!value!),
                              child: Icon(
                                value ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                                size: 18,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: TextButton(
                      onPressed: controller.goToSuccessPage,
                      style: TextButton.styleFrom(
                        minimumSize: Size(Get.width, 60),
                      ),
                      child: const Text('Continue'),
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
        ),
      ),
    );
  }
}

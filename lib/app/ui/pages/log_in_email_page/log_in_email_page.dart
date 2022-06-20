import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../../global_widgets/social_auth_button.dart';
import '../../global_widgets/spacers.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/log_in_email_controller.dart';
import '../../theme/text_theme.dart';

class LogInEmailPage extends GetView<LogInEmailController> {
  const LogInEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        // extendBody: true,
        appBar: AppBar(
            // leading: IconButton(icon: Icon(Icons.arrow_back_outlined), onPressed: () {  },),
            ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Hello Again!',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 80, right: 80),
                        child: Text(
                          'Welcome back, you\'ve been missed',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            color: AppColors(context).grey400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          FontAwesomeIcons.envelope,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 8),
                    child: GestureDetector(
                      onTap: controller.goToForgetPasswordScreen,
                      child: Text(
                        'Forget Password?',
                        textAlign: TextAlign.right,
                        style: AppTextStyle(
                          color: context.theme.colorScheme.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                    child: TextButton(
                      onPressed:  controller.goToHomeScreen,
                      style: TextButton.styleFrom(
                        minimumSize: Size(Get.width, 60),
                      ),
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(child: Divider(thickness: 2)),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Text(
                            'Or',
                            textAlign: TextAlign.end,
                            style: AppTextStyle(
                              color: AppColors(context).grey400,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Expanded(child: Divider(thickness: 2)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



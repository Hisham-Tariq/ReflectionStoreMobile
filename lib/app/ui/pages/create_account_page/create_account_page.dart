import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/app/ui/global_widgets/social_auth_button.dart';
import 'package:sizer/sizer.dart';

import '../../global_widgets/spacers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/create_account_controller.dart';
import '../../theme/text_theme.dart';

class CreateAccountPage extends GetView<CreateAccountController> {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalSpacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          'Create an account',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      autofillHints: const [AutofillHints.name],
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          FontAwesomeIcons.user,
                          size: 18,
                        ),
                      ),
                    ),
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
                          obscuringCharacter: "⬤",
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      onPressed: controller.goToHomeScreen,
                      style: TextButton.styleFrom(
                        minimumSize: Size(Get.width, 60),
                      ),
                      child: const Text('SIGN UP'),
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
                              color: const Color(0xFFC3C3C3),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Expanded(child: Divider(thickness: 2)),
                      ],
                    ),
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SocialAuthButtons(
                      onPressed: (){},
                      icon: FontAwesomeIcons.googlePlusG,
                      text: 'Sign In with Google',
                    ),
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SocialAuthButtons(
                      onPressed: (){},
                      icon: FontAwesomeIcons.facebookSquare,
                      text: 'Sign In with Facebook',
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

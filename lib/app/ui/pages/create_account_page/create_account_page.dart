import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../global_widgets/spacers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/create_account_controller.dart';
import '../../theme/text_theme.dart';

class CreateAccountPage extends GetView<CreateAccountController> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          'Create an account',
                          textAlign: TextAlign.center,
                          style: AppTextStyle(
                            color: context.theme.colorScheme.secondary,
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
                      style: AppTextStyle(
                        color: context.theme.colorScheme.onSurfaceVariant,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: AppTextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.user,
                          size: 18,
                        ),
                        filled: true,
                        fillColor: context.theme.colorScheme.surfaceVariant,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      ),
                    ),
                  ),
                  const VerticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      style: AppTextStyle(
                        color: context.theme.colorScheme.onSurfaceVariant,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: AppTextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.envelope,
                          size: 18,
                        ),
                        filled: true,
                        fillColor: context.theme.colorScheme.surfaceVariant,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                          style: AppTextStyle(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: context.theme.colorScheme.surfaceVariant,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        minimumSize: Size(Get.width, 60),
                        backgroundColor: context.theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(
                        'SIGN IN',
                        style: AppTextStyle(
                          color: context.theme.colorScheme.onPrimary,
                        ),
                      ),
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
                        'Sign In with Google',
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
                        'Sign In with FaceBook',
                        textAlign: TextAlign.center,
                        style: AppTextStyle(
                          color: Colors.white,
                        ),
                      ),
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

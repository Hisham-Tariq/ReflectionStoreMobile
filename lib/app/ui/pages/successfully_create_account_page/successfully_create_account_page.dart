import 'package:sizer/sizer.dart';

import '../../../../assets/assets.gen.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/successfully_create_account_controller.dart';
import '../../theme/text_theme.dart';

class SuccessfullyCreateAccountPage extends GetView<SuccessfullyCreateAccountController> {
  const SuccessfullyCreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
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
                padding: const EdgeInsetsDirectional.fromSTEB(40, 30, 40, 0),
                child: Assets.svg.forget_password.svg(
                  width: 150,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'You have successfully changed your password',
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 170, 20, 0),
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    backgroundColor: context.theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Login',
                    style: AppTextStyle(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

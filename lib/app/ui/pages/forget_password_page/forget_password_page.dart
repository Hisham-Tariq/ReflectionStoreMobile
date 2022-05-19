import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/forget_password_controller.dart';

class ForgetPasswordPage extends GetView<ForgetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ForgetPassword'),
      ),
    );
  }
}

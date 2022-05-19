import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/confirm_password_controller.dart';

class ConfirmPasswordPage extends GetView<ConfirmPasswordController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ConfirmPassword'),
      ),
    );
  }
}

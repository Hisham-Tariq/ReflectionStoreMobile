import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/successfully_create_account_controller.dart';

class SuccessfullyCreateAccountPage extends GetView<SuccessfullyCreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('SuccessfullyCreateAccount'),
      ),
    );
  }
}

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/create_account_controller.dart';

class CreateAccountPage extends GetView<CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('CreateAccount'),
      ),
    );
  }
}

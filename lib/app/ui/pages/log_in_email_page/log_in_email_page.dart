import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/log_in_email_controller.dart';

class LogInEmailPage extends GetView<LogInEmailController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('LogInEmail'),
      ),
    );
  }
}

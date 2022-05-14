import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/getting_started_controller.dart';

class GettingStartedPage extends GetView<GettingStartedController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('GettingStarted'),
      ),
    );
  }
}

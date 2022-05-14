import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/introduction_controller.dart';

class IntroductionPage extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('Introduction'),
      ),
    );
  }
}

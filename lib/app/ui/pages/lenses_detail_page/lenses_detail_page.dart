import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/lenses_detail_controller.dart';

class LensesDetailPage extends GetView<LensesDetailController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('LensesDetail'),
      ),
    );
  }
}

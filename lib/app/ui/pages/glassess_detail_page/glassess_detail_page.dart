import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/glassess_detail_controller.dart';

class GlassessDetailPage extends GetView<GlassessDetailController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('GlassessDetail'),
      ),
    );
  }
}

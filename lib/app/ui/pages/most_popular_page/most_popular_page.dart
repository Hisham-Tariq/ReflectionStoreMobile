import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/most_popular_controller.dart';

class MostPopularPage extends GetView<MostPopularController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('MostPopular'),
      ),
    );
  }
}

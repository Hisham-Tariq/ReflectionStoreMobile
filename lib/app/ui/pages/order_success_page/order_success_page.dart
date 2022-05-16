import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/order_success_controller.dart';

class OrderSuccessPage extends GetView<OrderSuccessController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('OrderSuccess'),
      ),
    );
  }
}

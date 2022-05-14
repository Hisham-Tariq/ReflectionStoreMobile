import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/order_detail_controller.dart';

class OrderDetailPage extends GetView<OrderDetailController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('OrderDetail'),
      ),
    );
  }
}

import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/product_detail_controller.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('ProductDetail'),
      ),
    );
  }
}

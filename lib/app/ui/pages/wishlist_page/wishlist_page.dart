import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/wishlist_controller.dart';

class WishlistPage extends GetView<WishlistController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('Wishlist'),
      ),
    );
  }
}

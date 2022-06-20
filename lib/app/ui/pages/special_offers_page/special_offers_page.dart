import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/special_offers_controller.dart';

class SpecialOffersPage extends GetView<SpecialOffersController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('SpecialOffers'),
      ),
    );
  }
}

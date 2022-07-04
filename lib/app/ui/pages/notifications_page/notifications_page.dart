import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/notifications_controller.dart';
import '../../theme/text_theme.dart';
import 'Widgets/notification_widgets.dart';

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Text(
          'Notification',
          style: AppTextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 10,top: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Activity",
                    style: AppTextStyle(
                      color: context.theme.colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("See more"),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: const [
                    OrderSuccessListTile(),
                    SizedBox(height: 20,),
                    OrderArrivedListTile(),
                    SizedBox(height: 20,),
                    OrderCancelledListTile(),
                    SizedBox(height: 20,),
                    PaymentConfirmedListTile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// Types of Notification
//  1. Order Arrived
// 2. Order Success
// 3. Order Confirmed
// 4. Order Cancelled

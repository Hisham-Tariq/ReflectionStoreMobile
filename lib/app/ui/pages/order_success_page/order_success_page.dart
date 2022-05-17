import 'package:sizer/sizer.dart';

import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/order_success_controller.dart';
import '../../theme/text_theme.dart';

class OrderSuccessPage extends GetView<OrderSuccessController> {
  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Assets.svg.orderConfirmed.svg(
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  'Order Complete',
                  style: AppTextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(70, 24, 70, 0),
                child: Text(
                  'Your payment was successfull! see you at the product',
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    backgroundColor: context.theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'View Poduct',
                    style: AppTextStyle(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    backgroundColor: context.theme.colorScheme.onSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  child: Text(
                    'Discover more products',
                    style: AppTextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:sizer/sizer.dart';

import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/order_success_controller.dart';
import '../../theme/app_colors.dart';
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
                  width: 170,
                  height: 170,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  'Order Complete',
                  style: AppTextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(70, 24, 70, 0),
                child: Text(
                  'Your payment was successful! see you at the product',
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: AppColors(context).grey400,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: TextButton(
                  onPressed: controller.onViewProduct,
                  style: TextButton.styleFrom(minimumSize: Size(Get.width, 60)),
                  child: const Text('View Product'),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(Get.width, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: AppColors(context).primary,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                  ),
                  child: Text(
                    'Discover more products',
                    style: AppTextStyle(
                      color: AppColors(context).primary,
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

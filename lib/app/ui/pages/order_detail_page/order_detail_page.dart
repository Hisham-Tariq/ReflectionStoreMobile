import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/order_detail_controller.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';

class OrderDetailPage extends GetView<OrderDetailController> {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 60),
              child: Row(
                children: [
                  Assets.svg.orderConfirmed.svg(
                    width: 80,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Osterbrio Glasses',
                        style: AppTextStyle(
                            color: context.theme.colorScheme.primary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Product Price',
                        textAlign: TextAlign.start,
                        style: AppTextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Text('Order summary',
                style: AppTextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18.sp,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: AppColors(context).grey400, //color of border
                    width: 1, //width of border
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Price',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                            ),),
                          Text('35.00\$',
                            textAlign: TextAlign.right,
                            style: AppTextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                            ),),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                            ),),
                          Text('35.00\$',
                            textAlign: TextAlign.end,
                            style: AppTextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                            ),),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                            ),),
                          Text('35.00\$',
                            textAlign: TextAlign.end,
                            style: AppTextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14.sp,
                            ),),
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grand Total',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                            ),),
                          Text('35.00\$',
                            textAlign: TextAlign.end,
                            style: AppTextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 20),
              child: Text('Payment method',
                style: AppTextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18.sp,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: AppColors(context).grey400, //color of border
                    width: 1, //width of border
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PayPal',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                            ),),
                          // Generated code for this Icon Widget...
                          FaIcon(
                            FontAwesomeIcons.paypal,
                            color: context.theme.colorScheme.primary,
                            size: 24,
                          )
                        ],
                      ),
                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('37.11\$',
                            style: AppTextStyle(
                              color: context.theme.colorScheme.primary,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp,
                            ),),

                          Text('you\'re going! +1 ',
                            style: AppTextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp,
                            ),),

                        ],
                      ),
                       // Generated code for this Icon Widget...
                      TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          minimumSize: const Size(150, 60),
                        ),
                        child:const Text('Place Order'),
                      ),
                    ],
                  ),
                ],
              ),

            ),
          ],
        ),)
      ,
    );
  }
}

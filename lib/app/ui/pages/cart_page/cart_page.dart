import '../../../../assets/assets.gen.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/cart_controller.dart';
import '../../theme/text_theme.dart';

class CartPage extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, size: 22),
          title: Text(
            "My Cart",
            style: AppTextStyle(
              color: context.theme.colorScheme.onBackground,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          actions: [
            Assets.svg.search.svg(
              height: 20,
              width: 20,
              color: context.theme.colorScheme.onBackground,
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade900,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: context.theme.colorScheme.primary
                                .withOpacity(0.4),
                          ),
                          child: Assets.images.carousal1.image(
                            width: 90,
                            height: 90,
                            fit: BoxFit.contain,
                          )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Osterbrio Glasses",
                            style: AppTextStyle(
                              color: context.theme.colorScheme.onBackground,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            SizedBox(width: 20,),
                            Assets.svg.delete.svg(
                              color: context.theme.colorScheme.onBackground,
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width:20,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9999),
                                color: context.theme.colorScheme.primary
                                    .withOpacity(0.4),
                              ),
                            ),
                            Text(" Color | Size = M"),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$190.00",
                              style: AppTextStyle(
                                color: context.theme.colorScheme.onBackground,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            SizedBox(width: 20,),
                            SizedBox(
                                width: 120,
                                height: 50,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: context.theme.colorScheme.onPrimary,
                                  ),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("-"),
                                        Text("1"),
                                        Text("+"),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        )),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 80,
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Total Price",
                      style: AppTextStyle(
                          color: context.theme.colorScheme.onBackground,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "\$190.00",
                      style: AppTextStyle(
                          color: context.theme.colorScheme.onBackground,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                SizedBox(
                    width: 170,
                    height: 100,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        label: Text("Checkout"),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: context.theme.colorScheme.onPrimary,
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_right_alt,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

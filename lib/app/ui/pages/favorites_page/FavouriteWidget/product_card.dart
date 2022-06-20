

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../assets/assets.gen.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/text_theme.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;

  const ProductCard({
    Key? key, required this.productName, required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100.w,
              height: 150,
              decoration: BoxDecoration(
                color: AppColors(context).onSecondaryLight,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors(context).grey100,
                    width: 1,
                    style: BorderStyle.solid),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.svg.done.svg(),
              ),
            ),
            Text(productName, style: AppTextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w900,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(productPrice, style: AppTextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColors(context).primary,
                ),),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors(context).grey200,
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    child: InkWell(
                      onTap: (){},
                      child: Icon(Icons.favorite,
                        color: AppColors(context).grey400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

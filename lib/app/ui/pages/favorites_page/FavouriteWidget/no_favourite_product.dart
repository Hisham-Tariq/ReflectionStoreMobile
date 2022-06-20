
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../../assets/assets.gen.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/text_theme.dart';

class NoFavouritesFoundPage extends StatelessWidget {
  const NoFavouritesFoundPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
          child: Assets.svg.favourites.svg(
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
          child: Text(
            'No favourites found',
            style: AppTextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(40, 24, 40, 0),
          child: Text(
            'Like an product to find it later, and receive notifications before it sells out.',
            textAlign: TextAlign.center,
            style: AppTextStyle(
              color: AppColors(context).grey100,
              fontSize: 11.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              minimumSize: const Size(200, 60),
              backgroundColor: context.theme.colorScheme.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              'Find Products',
              style: AppTextStyle(
                color: context.theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
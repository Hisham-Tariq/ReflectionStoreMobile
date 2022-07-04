
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
          padding: const EdgeInsetsDirectional.fromSTEB(20, 70, 20, 0),
          child: Assets.images.nofound.image(
            width: 200,
            height: 200,
            color: context.theme.colorScheme.primary.withOpacity(0.5)
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
          child: Text(
            'Not Found',
            style: AppTextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(40, 24, 40, 0),
          child: Text(
            'Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',
            textAlign: TextAlign.center,
            style: AppTextStyle(
              color: AppColors(context).grey100,
              fontSize: 11.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
        //   child: TextButton(
        //     onPressed: (){},
        //     style: TextButton.styleFrom(
        //       minimumSize: const Size(200, 60),
        //       backgroundColor: context.theme.colorScheme.primary,
        //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //     ),
        //     child: Text(
        //       'Search Something else',
        //       style: AppTextStyle(
        //         color: context.theme.colorScheme.onPrimary,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

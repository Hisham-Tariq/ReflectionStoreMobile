import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import '../theme/text_theme.dart';

class SocialAuthButtons extends StatelessWidget {
  const SocialAuthButtons({Key? key, required this.icon, required this.text, required this.onPressed}) : super(key: key);
  final IconData icon;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    var colors = AppColors(context);
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        minimumSize: Size(Get.width, 60),
        backgroundColor: colors.isDark ? colors.grey900 : colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colors.grey200,
            width: colors.isDark ? 0 : 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  child: Icon(
                    icon,
                    size: 22,
                    color: colors.isDark ? colors.white : colors.grey800,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: AppTextStyle(
                      color: colors.isDark ? colors.white : colors.grey800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/text_theme.dart';

class OrderSuccessListTile extends StatelessWidget {
  const OrderSuccessListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.theme.colorScheme.primary.withOpacity(0.2),
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: Colors.yellow.withOpacity(0.4),
          radius: 30,
          child: const Icon(Icons.check_circle_outline_outlined,
              color: Colors.yellow),
        ),
        title: Text(
          "Order Success",
          style: AppTextStyle(
            fontSize: 16,
          ),
        ),

        subtitle: RichText(
          text: TextSpan(
              style: AppTextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.white.withOpacity(0.9),
              ),
              text: "Order  ",
              children: [
                TextSpan(
                  text: "#12345678 ",
                  style: AppTextStyle(
                    color: Colors.yellow,
                  ),
                ),
                TextSpan(
                  text:
                  "has been completed & arrived at the destination. address.(Please Rate your Order)",
                  style: AppTextStyle(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                TextSpan(
                  text:
                  "\nJuly20, 2022 (8:10 PM)",
                  style: AppTextStyle(
                    color: Colors.white54,
                  ),),

              ]),
        ));
  }
}

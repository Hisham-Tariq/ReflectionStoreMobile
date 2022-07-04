

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/text_theme.dart';

class OrderArrivedListTile extends StatelessWidget {
  const OrderArrivedListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: context.theme.colorScheme.primary.withOpacity(0.2),
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: context.theme.colorScheme.primary.withOpacity(0.2),
          radius: 30,
          child: Icon(Icons.backpack_outlined,
              color: context.theme.colorScheme.primary),
        ),
        title: Text(
          "Order Arrived",
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
                  text: "#12346789 ",
                  style: AppTextStyle(
                    color: context.theme.colorScheme.primary,
                  ),
                ),
                const TextSpan(
                    text:
                    "has been completed & arrived at the destination. address.(Please Rate your Order)"),
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

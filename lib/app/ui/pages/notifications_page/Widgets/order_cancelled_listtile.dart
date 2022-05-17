import 'package:flutter/material.dart';
import '../../../theme/text_theme.dart';



class OrderCancelledListTile extends StatelessWidget {
  const OrderCancelledListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(

        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: Colors.red.withOpacity(0.2),
          radius: 30,
          child: const Icon(Icons.cancel_outlined,
              color: Colors.red),
        ),
        title: Text(
          "Order Cancelled",
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
              text: "Order ",
              children: [
                TextSpan(
                  text: "#123456789 ",
                  style: AppTextStyle(
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text:
                  "has been completed & arrived at the destination. address.(Please Rate your Order)",
                  style: AppTextStyle(
                    color: Colors.white.withOpacity(0.9),
                  ),),
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
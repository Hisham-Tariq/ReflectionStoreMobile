
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/text_theme.dart';

class PaymentConfirmedListTile extends StatelessWidget {
  const PaymentConfirmedListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: context.theme.colorScheme.primary.withOpacity(0.2),
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: Colors.orange.withOpacity(0.2),
          radius: 30,
          child: const Icon(Icons.payments_outlined,
              color: Colors.orange),
        ),
        title: Text(
          "Payment Confirmed",
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
                    color: Colors.orange,
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

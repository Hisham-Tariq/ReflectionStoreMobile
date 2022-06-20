import 'package:sizer/sizer.dart';
import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favorites_controller.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';
import 'FavouriteWidget/product_card.dart';

class FavoritesPage extends GetView<FavoritesController> {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body:SingleChildScrollView(
          child: ListView(
            children: [
              ListTile(
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
            )),
            ],
          ),
          ),
        ),
    );
  }
}



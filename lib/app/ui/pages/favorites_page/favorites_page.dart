import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_app/app/ui/pages/favorites_page/FavouriteWidget/no_favourite_product.dart';
import '../../../controllers/favorites_controller.dart';
import '../../theme/text_theme.dart';

class FavoritesPage extends GetView<FavoritesController> {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,

        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      FontAwesomeIcons.search,
                      size: 18,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.arrowDownWideShort,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Result for jhkfkaj ",
                  style: AppTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),),
                  Text("0 found"),
                ],
              ),
              const NoFavouritesFoundPage(),
            ],
          ),
        ),
        ),
    );
  }
}



import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/wishlist_controller.dart';
import '../../theme/text_theme.dart';
import '../home_page/home_page.dart';

class WishlistPage extends GetView<WishlistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.svg.arrowLeft.svg(
                        height: 22,
                        width: 22,
                        color: context.theme.colorScheme.onBackground,
                      ),
                    Text("My Wishlist",
                      style: AppTextStyle(
                        color: context.theme.colorScheme.onBackground,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),),
                    Assets.svg.search.svg(
                        height: 20,
                        width: 20,
                        color: context.theme.colorScheme.onBackground,
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 120,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "All",
                              style: AppTextStyle(
                                color: Colors.black,
                              ),
                            ),),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 120,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Glasses",
                                style: AppTextStyle(
                                  color: context.theme.colorScheme.primary,
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 120,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Lenses",
                                style: AppTextStyle(
                                  color: context.theme.colorScheme.primary,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0, ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: ProductCard(
                          productImage:Assets.images.carousal1.image(
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
                        )),
                        SizedBox(width: 15,),
                        Expanded(child: ProductCard(
                          productImage:Assets.images.carousal1.image(
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
                        )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0, ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: ProductCard(
                          productImage:Assets.images.carousal1.image(
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
                        )),
                        SizedBox(width: 15,),
                        Expanded(child: ProductCard(
                          productImage:Assets.images.carousal1.image(
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

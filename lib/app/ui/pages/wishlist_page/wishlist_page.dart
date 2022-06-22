import 'package:my_app/app/ui/global_widgets/global_widgets.dart';

import '../../../../assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/wishlist_controller.dart';
import '../../theme/text_theme.dart';
import '../home_page/home_page.dart';

class WishlistPage extends GetView<WishlistController> {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  Text(
                    "My Wishlist",
                    style: AppTextStyle(
                      color: context.theme.colorScheme.onBackground,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Assets.svg.search.svg(
                    height: 20,
                    width: 20,
                    color: context.theme.colorScheme.onBackground,
                  ),
                ],
              ),
              const VerticalSpacer(),
              SizedBox(
                width: Get.width,
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.productCategories.length,
                  itemBuilder: (context, index) {
                    return ProductCategoryPill(
                      title: controller.productCategories[index],
                      isSelected: controller.productCategories[index] == controller.selectedCategory,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 15);
                  },
                ),
              ),
              const VerticalSpacer(),
              Expanded(
                child: SizedBox(
                  child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 320,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCard(
                        productImage: Assets.images.carousal1.image(
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        productName: 'Osterbrio Glasses',
                        rating: '4.6',
                        soldProduct: '1,200',
                        productPrice: '12.00',
                      );
                    },
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 25.0, ),
              //   child: Expanded(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(child: ),
              //         SizedBox(width: 15,),
              //         Expanded(child: ProductCard(
              //           productImage:Assets.images.carousal1.image(
              //             width: double.infinity,
              //             fit: BoxFit.fill,
              //           ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
              //         )),
              //       ],
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 25.0, ),
              //   child: Expanded(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(child: ProductCard(
              //           productImage:Assets.images.carousal1.image(
              //             width: double.infinity,
              //             fit: BoxFit.fill,
              //           ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
              //         )),
              //         SizedBox(width: 15,),
              //         Expanded(child: ProductCard(
              //           productImage:Assets.images.carousal1.image(
              //             width: double.infinity,
              //             fit: BoxFit.fill,
              //           ), productName: 'Osterbrio Glasses', rating: '4.6', soldProduct: '1,200', productPrice: '12.00',
              //         )),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCategoryPill extends StatelessWidget {
  const ProductCategoryPill({Key? key, required this.title, required this.isSelected}) : super(key: key);
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: isSelected
          ? TextButton(
              onPressed: () {},
              child: Text(
                title,
                style: AppTextStyle(
                  color: Colors.black,
                ),
              ),
            )
          : OutlinedButton(
              onPressed: () {},
              child: Text(
                title,
                style: AppTextStyle(
                  color: context.theme.colorScheme.primary,
                ),
              ),
            ),
    );
  }
}

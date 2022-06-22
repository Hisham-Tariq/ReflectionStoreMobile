import 'package:carousel_slider/carousel_slider.dart';

import '../../../../assets/assets.gen.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/special_offers_controller.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';

class SpecialOffersPage extends GetView<SpecialOffersController> {
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
                    Text("Special Offers",
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
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 230.0,
                            initialPage: 0,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              controller.onPageChange(index);
                            },
                          ),
                          items: [0, 1, 2,3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.yellow.withOpacity(0.4),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children:  [

                                              Text(
                                                "50%",
                                                style: AppTextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 30,
                                                ),
                                              ),
                                              Text(
                                                "Today’s Special!",
                                                style: AppTextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                "Get discount for every order, only valid for today",
                                                style: AppTextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.bottomRight,
                                          child: Assets.images.carousal1.image(
                                            height: double.infinity,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        left: 0,
                        child: Container(
                            alignment: Alignment.center,
                            child:  GetBuilder<SpecialOffersController>(builder: (logic) {
                              return _PageViewIndicators(
                                activeIndex: logic.currentPage,
                                totalPages: 4,
                                indicatorColor: AppColors(context).primary,
                              );
                            })
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}


class _PageViewIndicators extends StatelessWidget {
  const _PageViewIndicators(
      {Key? key,
        required this.activeIndex,
        required this.totalPages,
        required this.indicatorColor})
      : super(key: key);
  final int activeIndex;
  final int totalPages;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < totalPages; i++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 6,
            width: i == activeIndex ? 30 : 6,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: indicatorColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
      ],
    );
  }
}

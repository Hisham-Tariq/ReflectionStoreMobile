import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../assets/assets.gen.dart';
import '../../../controllers/home_controller.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_theme.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow.withOpacity(0.4),
                    radius: 30,
                    child: Assets.images.profile.image(
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Good Morning",
                        textAlign: TextAlign.left,
                        style: AppTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Iqra Munir",
                        style: AppTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: context.theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.svg.notification.svg(
                          color: context.theme.colorScheme.onBackground,
                          width: 30,
                          height: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Assets.svg.favourite.svg(
                          color: context.theme.colorScheme.onBackground,
                          width: 30,
                          height: 30),
                    ],
                  )
                ],
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Special offer",
                      textAlign: TextAlign.left,
                      style: AppTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: AppTextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: context.theme.colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
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
                        child:  GetBuilder<HomeController>(builder: (logic) {
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
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow.withOpacity(0.4),
                          radius: 34,
                          child:
                          Icon(FontAwesomeIcons.glasses,
                            color: context.theme.colorScheme.onBackground,
                            size: 26,
                          ),

                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Glasses",
                        style: AppTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),

                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.yellow.withOpacity(0.4),
                          radius: 34,
                          child:
                          Icon(FontAwesomeIcons.eye,
                            color: context.theme.colorScheme.onBackground,
                            size: 26,
                          ),

                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Lenses",
                          style: AppTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Most Popular",
                      textAlign: TextAlign.left,
                      style: AppTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: AppTextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: context.theme.colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
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
              Row(
                children: [
                  Container()
                ],
              )
            ],
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

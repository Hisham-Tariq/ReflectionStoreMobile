import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:my_app/app/ui/pages/cart_page/cart_page.dart';
import 'package:my_app/app/ui/pages/favorites_page/favorites_page.dart';
import 'package:my_app/app/ui/pages/products_page/products_page.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/setting_page/setting_page.dart';
import '../ui_models/drawer_navigation_item.dart';

final List<DrawerNavigationItem> drawerNavigationItems = [
  DrawerNavigationItem(
    "Home",
    Icons.home_outlined,
    Icons.home,
    DrawerItemType.viewBased,
    widget: const HomePage(),
  ),

  DrawerNavigationItem(
    "Product",
    Icons.search,
    Icons.search,
    DrawerItemType.callAble,
    onTap: () async {
      final InAppReview inAppReview = InAppReview.instance;
      // inAppReview.openStoreListing(); // eMoves the user to playstor
      if (await inAppReview.isAvailable()) {
        inAppReview.requestReview();
      }
    },
    widget: ProductsPage(),
  ),
  DrawerNavigationItem(
    "Wishlist",
    Icons.favorite_outline,
    Icons.favorite,
    DrawerItemType.callAble,
    onTap: () async {
      final InAppReview inAppReview = InAppReview.instance;
      // inAppReview.openStoreListing(); // eMoves the user to playstor
      if (await inAppReview.isAvailable()) {
        inAppReview.requestReview();
      }
    },
    widget: FavoritesPage(),
  ),

  DrawerNavigationItem(
    "Cart",
    Icons.add_shopping_cart,
    Icons.add_shopping_cart,
    DrawerItemType.viewBased,
    widget: CartPage(),
  ),
  DrawerNavigationItem(
    "Profile",
    Icons.person_outline,
    Icons.person,
    DrawerItemType.callAble,
    onTap: () async {
      Fluttertoast.showToast(msg: "Logging Out User");
    },
    widget: const HomePage(),
  ),
];

import 'package:get/get.dart';

class WishlistController extends GetxController {
  final productCategories = [
    'All',
    'Glasses',
    'Lenses',
  ];
  String selectedCategory = "All";

  void selectCategory(String category) {
    selectedCategory = category;
    update();
  }
}


import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
class HomeController extends GetxController {
  Debouncer onBackButtonPressedDebouncer = Debouncer(delay: const Duration(milliseconds: 300));
  Timer? doubleTapBackTimer;
}
import 'package:get/get.dart';

class HomeController extends GetxController {
  static const navigatorKey = 1;

  final _pages = ['/movies', '/favorites'];

  final _pageIndex = 0.obs;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    Get.offNamed(_pages[page], id: navigatorKey);
  }
}

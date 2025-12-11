import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNext();
  }

  void _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 3));

    bool isLoggedIn = false;

    if (isLoggedIn) {
      Get.offAllNamed(Routes.CUSTOM_BOTTOM_NAVIGATION_BAR);
    } else {
      Get.offAllNamed(Routes.LOG_IN);
    }
  }
}

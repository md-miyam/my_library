import 'package:get/get.dart';

import '../controllers/current_book_controller.dart';

class CurrentBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrentBookController>(
      () => CurrentBookController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/saved_book_controller.dart';

class SavedBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SavedBookController>(
      () => SavedBookController(),
    );
  }
}

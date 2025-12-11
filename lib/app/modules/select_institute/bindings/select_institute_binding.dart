import 'package:get/get.dart';

import '../controllers/select_institute_controller.dart';

class SelectInstituteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectInstituteController>(
      () => SelectInstituteController(),
    );
  }
}

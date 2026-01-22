import 'package:get/get.dart';

import '../controllers/panding_request_controller.dart';

class PandingRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PandingRequestController>(
      () => PandingRequestController(),
    );
  }
}

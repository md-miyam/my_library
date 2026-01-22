import 'package:get/get.dart';

class SavedBookController extends GetxController {

  RxBool isFev = true.obs;

  void tapFev (){
    isFev.value = !isFev.value;
  }
}

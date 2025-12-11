import 'package:get/get.dart';

class LogInController extends GetxController {

  RxBool suffixIconVisibility = false.obs;

  void suffixIconOnChange(){
    suffixIconVisibility.value = !suffixIconVisibility.value;
  }


}

import 'package:get/get.dart';

class LogInController extends GetxController {

  RxBool suffixIconVisibility = true.obs;

  void suffixIconOnChange(){
    suffixIconVisibility.value = !suffixIconVisibility.value;
  }


}

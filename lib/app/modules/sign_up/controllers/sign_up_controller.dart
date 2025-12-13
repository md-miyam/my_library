import 'package:get/get.dart';

class SignUpController extends GetxController {

  RxBool suffixIconVisibility = false.obs;

  void suffixIconOnChange(){
    suffixIconVisibility.value = !suffixIconVisibility.value;
  }
}

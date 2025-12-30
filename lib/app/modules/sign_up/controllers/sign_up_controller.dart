import 'package:get/get.dart';

class SignUpController extends GetxController {

  RxBool suffixIconVisibility = true.obs;

  void suffixIconOnChange(){
    suffixIconVisibility.value = !suffixIconVisibility.value;
  }
}

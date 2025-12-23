import 'package:get/get.dart';

class MyBookController extends GetxController {


  final RxBool checked = false.obs;

  void isChecked(bool a) {
    checked.value = a;
  }


}
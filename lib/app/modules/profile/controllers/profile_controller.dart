import 'package:get/get.dart';

class ProfileController extends GetxController {

  final isDark = false.obs;

  void isDarkTap (bool v){
    isDark.value = v;
  }


}

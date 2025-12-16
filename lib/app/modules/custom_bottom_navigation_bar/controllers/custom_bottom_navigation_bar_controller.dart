import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_library/app/modules/profile/views/profile_view.dart';
import '../../explore/views/explore_view.dart';
import '../../home/views/home_view.dart';


class CustomBottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;
  final pages = [
    HomeView(),
    ExploreView(),
    Container(),
    Container(),
    ProfileView(),
  ];
  void changeIndex(int index){
    currentIndex.value = index;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../explore/views/explore_view.dart';
import '../../home/views/home_view.dart';


class CustomBottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;
  final pages = [
    HomeView(),
    ExploreView(),
    Container(),
    Container(),
    Container(),
  ];
  void changeIndex(int index){
    currentIndex.value = index;
  }
}

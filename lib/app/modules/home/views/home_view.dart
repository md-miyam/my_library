import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/app_text_styles.dart';
import '../../common_widget/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Tangail Polytechnic Institute",
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: AppTextStyles.spaceGroteskLarge40,
        ),
      ),
    );
  }
}

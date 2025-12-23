import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(),
          Image.asset(
            ImagePath.splash,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImagePath.logo, height: Get.height * .10),
                    SizedBox(width: 15.w),
                    Text(
                      "Library",
                      style: AppTextStyles.spaceGroteskLarge40.copyWith(
                        color: AppColors.yellowColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(),
                Center(
                  child: Lottie.asset(
                    'assets/lottie/loading_dots.json',
                    height: 145,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';

import '../../common_widget/custom_app_bar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250.h,
        decoration: BoxDecoration(
          color: AppColors.secondaryBlackColor,
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40.r) ,bottomRight:Radius.circular( 40.r),)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('profile',style: AppTextStyles.bold16.copyWith(color: AppColors.whiteColor),)
              ],
            )
          ],
        ),
      ) ,
    );
  }
}

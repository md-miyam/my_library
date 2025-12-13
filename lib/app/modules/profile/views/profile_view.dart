import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import 'package:my_library/app/modules/common_widget/custom_row.dart';

import '../../common_widget/custom_app_bar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Tangail Polytechnic Institute'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.profileBackground),
                  fit: BoxFit.cover,
                ),
                color: AppColors.secondaryBlackColor,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -30.h,
                    left: 20.w,
                    child: Container(
                      height: 110.w,
                      width: 110.w,
                      decoration: BoxDecoration(
                        color: AppColors.cardGreyColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.whiteColor,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage(ImagePath.profile), // profile image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Edit Icon
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30.w,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: AppColors.blackColor, blurRadius: 4),
                        ],
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 16.sp,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height: 100.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.cardGreyColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "LIBRARY CARD",
                              style: AppTextStyles.regular16,
                            ),
                            Text(
                              "TPI-D5E-STD1003",
                              style: AppTextStyles.regular16,
                            ),
                          ],
                        ),
                        Image.asset(ImagePath.scan, height: 80.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Personal info",
                    style: AppTextStyles.bold20.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        CustomRow(text: "Name :   ", subtext: "Borsha"),
                        CustomRow(text: "Roll :   ", subtext: "668884"),
                        CustomRow(text: "Reg  :   ", subtext: "1502215367"),
                        CustomRow(
                          text: "Dep  :   ",
                          subtext: "Computer Science  And Technology",
                        ),
                        CustomRow(text: "Shift  :   ", subtext: "2 nd"),
                        CustomRow(text: "Session  :   ", subtext: " 21-22"),
                        CustomRow(text: " phone  ", subtext: " 013********"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Setting",
                    style: AppTextStyles.bold20.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  buildCard(
                    title: "Change Password",
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.keyboard_double_arrow_right),
                  ),
                  buildCard(
                    title: "Language(Bangla/English)",
                    leading: Icon(Icons.language),
                    trailing: Text('English'),
                  ),
                  buildCard(
                    title: "Dark Mode",
                    leading: Icon(Icons.dark_mode_outlined),
                    trailing: Icon(
                      Icons.dark_mode,
                      color: AppColors.blackColor,
                    ),
                  ),
                  buildCard(
                    title: "FAQs & Contact Admin",
                    leading: Icon(Icons.question_answer),
                    trailing: Icon(Icons.architecture),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Card buildCard({
    required String title,
    required Widget leading,
    required Widget trailing,
  }) {
    return Card(
      child: ListTile(leading: leading, title: Text(title), trailing: trailing),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              buildAppBar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildLibraryCard(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8,
                    ),
                    child: Text(
                      "Settings",
                      style: AppTextStyles.spaceGroteskLarge20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(ImagePath.resetPassword, height: 26),
                    title: Text("Change password"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(ImagePath.instituteIcon, height: 26),
                    title: Text("Change your Institution"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(ImagePath.language, height: 26),
                    title: Text("Language(Bangla/English)"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16),
                  ),
                  ListTile(
                    // onTap: (){
                    //   controller.isDarkTap(controller.isDark.value);
                    // },
                    leading: Image.asset(ImagePath.lightDark, height: 26),
                    title: Text("Dark Mode"),
                    trailing:  Transform.scale(
                        scale: .8,
                        child: Obx(() => Switch(
                          value: controller.isDark.value,
                          onChanged: controller.isDarkTap,
                          activeColor: AppColors.primaryColor,
                        ),),
                      ),

                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(ImagePath.faq, height: 26),
                    title: Text("FAQs & Contact Admin"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp, size: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildLibraryCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardGreyColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("LIBRARY CARD", style: AppTextStyles.medium12),
                        Text("TPI-D5E-STD1003", style: AppTextStyles.bold12),
                      ],
                    ),
                    Image.asset(ImagePath.scan),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildAppBar() {
    return Container(
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
            bottom: -35.h,
            left: 20.w,
            child: Container(
              height: 110.w,
              width: 110.w,
              decoration: BoxDecoration(
                color: AppColors.cardGreyColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.whiteColor, width: 2),
                image: DecorationImage(
                  image: AssetImage(ImagePath.profile), // profile image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

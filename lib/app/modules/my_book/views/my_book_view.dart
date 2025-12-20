import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import '../controllers/my_book_controller.dart';

class MyBookView extends GetView<MyBookController> {
  const MyBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Main container with image + gradient
            Stack(
              children: [
                // Background Image
                Container(
                  height: Get.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagePath.bookH),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * .20,
                  left: 0.w,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    height: 165.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, AppColors.whiteColor],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                "Computer Science",
                                style: AppTextStyles.bold12,
                              ),
                            ),
                          ),
                          Text(
                            "Introduction to Algorithms",
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.bold24,
                          ),
                          Text(
                            'Thomas H.Cormen',
                            style: AppTextStyles.regular14.copyWith(
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Language              :",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Text(
                        "   English",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Publishing Year     :",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Text(
                        "   2000",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Copies Left           :",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Text(
                        "   05",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Book Shelf no        :",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Text(
                        "   A-12",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Divider(color: AppColors.cardGreyColor, height: 2),
                  ),
                  Text(
                    "Description",
                    style: AppTextStyles.bold24.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utshotb.",
                                   style: AppTextStyles.regular12.copyWith(color: AppColors.blackColor),overflow: TextOverflow.ellipsis,maxLines: 5, ),
                  Text("Borrowing Details ",style: AppTextStyles.bold24.copyWith(
                    color: AppColors.blackColor,)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

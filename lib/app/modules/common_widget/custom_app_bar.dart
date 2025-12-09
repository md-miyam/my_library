import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leadingWidth: 80,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.primaryColor,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                "Back",
                style: AppTextStyles.medium14.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        title: Text(title ?? '', style: AppTextStyles.medium16),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

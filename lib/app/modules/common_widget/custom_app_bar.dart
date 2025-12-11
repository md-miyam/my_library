import 'package:flutter/material.dart';
import 'package:my_library/app/data/image_path.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        leadingWidth: 32,
        leading: Image.asset(ImagePath.institute,height: 10,),
        title: Text(title ?? '', style: AppTextStyles.bold18),
        centerTitle: false,
        actions: [
          InkWell(
            onTap: (){},
            child: Image.asset(ImagePath.notificationIcon,height: 24,),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

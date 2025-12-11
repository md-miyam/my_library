import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/image_path.dart';
import '../controllers/custom_bottom_navigation_bar_controller.dart';

class CustomBottomNavigationBarView
    extends GetView<CustomBottomNavigationBarController> {
  const CustomBottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,

          backgroundColor: AppColors.whiteColor,
          selectedItemColor: AppColors.selectedBottomNavColor, // selectedBottomNavColor
          selectedLabelStyle: AppTextStyles.spaceGroteskLarge10.copyWith(
            color: AppColors.selectedBottomNavColor, // selectedBottomNavColor
          ),
          unselectedLabelStyle: AppTextStyles.spaceGroteskLarge10.copyWith(
            color: AppColors.blackColor,
          ),
          unselectedItemColor: AppColors.blackColor,
          items: [
            _bottomNavItem(
              index: 0,
              iconPath: ImagePath.homeIcon,
              label: 'Home',
            ),
            _bottomNavItem(
              index: 1,
              iconPath: ImagePath.searchIcon,
              label: 'Explore',
            ),
            _bottomNavItem(
              index: 2,
              iconPath: ImagePath.myBookIcon,
              label: 'My Books',
            ),
            _bottomNavItem(
              index: 3,
              iconPath: ImagePath.saveIcon,
              label: 'Saved',
            ),
            _bottomNavItem(
              index: 4,
              iconPath: ImagePath.profileIcon,
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.pages[controller.currentIndex.value]),
    );
  }

  BottomNavigationBarItem _bottomNavItem({
    required int index,
    required String iconPath,
    required String label,
  }) {
    bool isSelected = controller.currentIndex.value == index;

    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 25,
            height: 2.5,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.selectedBottomNavColor : Colors.transparent, // selectedBottomNavColor
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 4),

          // Icon With Color Filter
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.selectedBottomNavColor : AppColors.blackColor, // selectedBottomNavColor
              BlendMode.srcIn,
            ),
            child: Image.asset(
              iconPath,
              height: 20 ,
            ),
          ),
        ],
      ),
      label: label,
    );
  }
}

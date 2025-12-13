import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/image_path.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../common_widget/custom_app_bar.dart';
import '../../explore/views/explore_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: const CustomAppBar(title: "Tangail Polytechnic Institute"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            // Fixed Search Box
            _buildSearchBox(),

            // Scrollable Content
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  _buildCategories(controller),
                  SizedBox(height: 12.h),
                  _buildFeaturedBooks(controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Search Box
  Widget _buildSearchBox() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: InkWell(
        onTap: () {
          Get.to(() => ExploreView(),
            transition: Transition.rightToLeft,
            duration: Duration(milliseconds: 700),
          );
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondaryIconColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          child: Row(
            children: [
              Image.asset(ImagePath.searchIcon, height: 20.h),
              SizedBox(width: 12.w),
              Text("Search for books...", style: AppTextStyles.medium12),
            ],
          ),
        ),
      ),
    );
  }

  // Categories
  Widget _buildCategories(HomeController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: AppTextStyles.spaceGroteskLarge20),
        SizedBox(height: 8.h),
        Container(
          height: Get.height * .12,
          decoration: BoxDecoration(
            color: AppColors.cardGreyColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categoriesBook.length,
            itemBuilder: (context, index) {
              final item = controller.categoriesBook[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.secondaryColor),
                      ),
                      padding: EdgeInsets.all(10.sp),
                      child: Image.asset(item['image'], fit: BoxFit.contain),
                    ),
                    SizedBox(height: 4.h),
                    Text(item['category'], style: AppTextStyles.medium10),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Featured Books
  Widget _buildFeaturedBooks(HomeController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("New Arrivals", style: AppTextStyles.spaceGroteskLarge20),
        ListView.builder(
          itemCount: controller.booksList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = controller.booksList[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.cardGreyColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBookImage(item['image']),
                    Padding(
                      padding: EdgeInsets.all(12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: AppTextStyles.spaceGroteskLarge16,
                          ),
                          SizedBox(height: 4.h),
                          Text(item['author'], style: AppTextStyles.medium12),
                          SizedBox(height: 4.h),
                          Text(
                            "Last Updated in ${item['year']}",
                            style: AppTextStyles.medium10,
                          ),
                          SizedBox(height: 10.h),
                          _buildCollectButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // Book Image with Favorite Icon
  Widget _buildBookImage(String imagePath) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 100,
              child: Image.asset(imagePath, width: double.infinity),
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          right: 10.w,
          child: CircleAvatar(
            radius: 15.r,
            backgroundColor: AppColors.secondaryColor,
            child: Icon(
              Icons.favorite_border,
              size: 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Collect Button
  Widget _buildCollectButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: () {},
        child: const Text("Borrow Now"),
      ),
    );
  }
}





// boxShadow: [
// BoxShadow
// (
// color: Colors.grey.shade500,
// offset: Offset(4.0, 4.0),
// blurRadius: 15.0,
// spreadRadius: 1.0,
// ),
// BoxShadow(
// color: Colors.white,
// offset: Offset(-4.0, -4.0),
// blurRadius: 15.0,
// spreadRadius:
// 1.0
// ,
// )
// ,
// ]
// ,
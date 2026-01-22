import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/modules/current_book/views/current_book_view.dart';
import 'package:my_library/app/modules/history/views/history_view.dart';
import '../controllers/my_book_controller.dart';

class MyBookView extends GetView<MyBookController> {
  const MyBookView({super.key});

  @override
  Widget build(BuildContext context) {
    final MyBookController controller = Get.put(MyBookController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35.h,
        title: Text("My Book", style: AppTextStyles.spaceGroteskLarge18),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: SizedBox(
                height: 48.h,
                width: double.infinity,
                child: Card(
                  color: AppColors.cardGreyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 3.h,
                      horizontal: 2.w,
                    ),
                    child: TabBar(
                      physics: BouncingScrollPhysics(),
                      dividerColor: Colors.transparent,
                      controller: controller.tabController,
                      isScrollable: false,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.whiteColor,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 0,
                      ),
                      labelStyle: AppTextStyles.spaceGroteskLarge12.copyWith(
                        color: AppColors.selectedBottomNavColor,
                      ),
                      unselectedLabelColor: AppColors.blackColor,
                      tabs: const [
                        Tab(text: 'Current Book'),
                        Tab(text: 'History'),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                physics: BouncingScrollPhysics(),
                children: const [CurrentBookView(), HistoryView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

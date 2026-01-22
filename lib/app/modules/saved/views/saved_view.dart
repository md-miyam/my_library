import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_library/app/modules/panding_request/views/panding_request_view.dart';
import 'package:my_library/app/modules/saved_book/views/saved_book_view.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/saved_controller.dart';

class SavedView extends GetView<SavedController> {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    final SavedController controller = Get.put(SavedController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35.h,
        title: Text("Saved", style: AppTextStyles.spaceGroteskLarge18),
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
                        Tab(text: 'Saved Book'),
                        Tab(text: 'Panding Request'),
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
                children: const [SavedBookView(), PandingRequestView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

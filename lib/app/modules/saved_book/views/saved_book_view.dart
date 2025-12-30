import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';

import '../controllers/saved_book_controller.dart';

class SavedBookView extends GetView<SavedBookController> {
  const SavedBookView({super.key});

  @override
  Widget build(BuildContext context) {
    final SavedBookController controller = Get.put(SavedBookController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        child: ListView.builder(
          itemCount: 20,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: SizedBox(
                height: 130.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.cardGreyColor,
                    foregroundColor: AppColors.blackColor,
                    elevation: 3,
                    // padding: EdgeInsets.all(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            ImagePath.book1,
                            height: double.infinity,
                            width: 120.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Introduction to Algorithms Algorithms",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Obx(
                                  () => SizedBox(
                                    height: 30.h,
                                    width: 30.w,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        controller.tapFev();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        padding: EdgeInsets.all(0.sp),
                                        shape: CircleBorder(),
                                      ),
                                      child: Icon(
                                        controller.isFev.value
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        size: 20.sp,
                                        color: controller.isFev.value
                                            ? Colors.red
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              "Thomas H.Cormen",
                              style: AppTextStyles.medium12,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ratings :",
                                  style: AppTextStyles.regular12,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 10.sp,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      "4.6",
                                      style: AppTextStyles.regular12,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Queue position :",
                                  style: AppTextStyles.regular12,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "# ${120}",
                                  style: AppTextStyles.regular12,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 25.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Borrow Now',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

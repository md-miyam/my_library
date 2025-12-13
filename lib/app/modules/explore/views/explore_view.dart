import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import '../../common_widget/custom_app_bar.dart';
import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Tangail Polytechnic Institute'),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Text(
                    'Explore',
                    style: AppTextStyles.spaceGroteskLarge20,
                  ),
                ),

                GridView.builder(
                  itemCount: 16,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6.h,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  shrinkWrap: true,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondaryIconColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.cardGreyColor,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.asset(
                                  ImagePath.bookA,
                                ),
                              ),
                            ),
                            Text(
                              "Introduction to Algorithms",
                              style: AppTextStyles.medium16,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              "Thomas H.Cormen",
                              style: AppTextStyles.regular10,
                            ),
                            SizedBox(height: 4.h),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               RichText(
                                 text: TextSpan(
                                   children: [
                                     TextSpan(
                                       text: "Last Updated in : ",
                                       style: AppTextStyles.regular9.copyWith(
                                         color: AppColors.blackColor,
                                       ),
                                     ),
                                     TextSpan(
                                       text: "2022",
                                       style: AppTextStyles.bold12.copyWith(
                                         color: AppColors.blackColor,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.star,size: 10,color: Colors.amber,),
                                   Text("4.6",style: AppTextStyles.regular9.copyWith(color: AppColors.blackColor,),)
                                 ],
                               )
                             ],
                           ),
                          ],
                        ),
                      ),
                    );
                  },
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}





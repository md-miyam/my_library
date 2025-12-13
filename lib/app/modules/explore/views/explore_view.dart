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
      backgroundColor: Colors.amber.shade100,
      appBar: CustomAppBar(title: 'Tangail Polytechnic Institute'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: Text('Explore', style: AppTextStyles.regular16),
                ),

                GridView.builder(
                  itemCount: 16,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap:true ,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration:
                      BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(8),
                      ),alignment: Alignment.topCenter,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150.h,
                              width: double.infinity,
                              decoration: BoxDecoration(color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(8.r)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.r),
                                  child: Image.asset(ImagePath.bookA,fit: BoxFit.cover,)),
                            ),
                            Text("Introduction to Algorithms",style: AppTextStyles.bold16,),
                            SizedBox(height: 4.h,),
                            Text("Thomas H.Cormen",style: AppTextStyles.regular12,),
                            SizedBox(height: 4.h,),
                            RichText(text: TextSpan(
                              children: [TextSpan(
                                text: "Last Updated in ",style: AppTextStyles.regular12.copyWith(color: AppColors.blackColor),
                              ),
                              TextSpan(text: "2022",style: AppTextStyles.bold12.copyWith(color: AppColors.blackColor))

                              ],
                            ))
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

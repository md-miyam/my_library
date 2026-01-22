import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/saved_controller.dart';

class SavedView extends GetView<SavedController> {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowColor.withAlpha(70),
      body: Column(
        children: [
          SizedBox(height: 50.h),

          Text(
            'Call',
            style: AppTextStyles.medium24
                .copyWith(color: AppColors.blackColor),
          ),

          SizedBox(height: 20.h),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child:      TabBar(
                controller: controller.tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                labelPadding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                tabs:  [
                  Tab(text: 'Missed'),
                  Tab(text: 'Received'),
                ],
              ),
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index)
                  {
                    return Card();
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Received Call $index'),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

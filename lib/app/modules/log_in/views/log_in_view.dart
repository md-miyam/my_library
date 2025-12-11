import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/modules/common_widget/custom_elevated_button.dart';
import 'package:my_library/app/modules/common_widget/custom_text_field.dart';
import '../controllers/log_in_controller.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Log In",style: AppTextStyles.spaceGroteskLarge24,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: CustomTextField(
                hintText: "Email",
              ),
            ),
            CustomTextField(
              hintText: "Password",
            ),
            
            CustomElevatedButton(childText: "Password")
          ],
        ),
      ),
    );
  }
}

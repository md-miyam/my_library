import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/modules/common_widget/custom_rich_text.dart';
import 'package:my_library/app/modules/common_widget/custom_text_field.dart';
import '../../../routes/app_pages.dart';
import '../controllers/log_in_controller.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Log In", style: AppTextStyles.spaceGroteskLarge28),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomTextField(
                      hintText: "Email account",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Obx(
                    () => CustomTextField(
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.suffixIconOnChange();
                        },
                        icon: Icon(
                          controller.suffixIconVisibility.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.secondaryBlackColor,
                        ),
                      ),
                      obscureText: controller.suffixIconVisibility.value,
                    ),
                  ),
              
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          " Forgot your password? ",
                          style: AppTextStyles.medium12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {
                      Get.snackbar(
                        "Successful",
                        "Log in successfully done",
                      );
                      Get.offAllNamed(Routes.CUSTOM_BOTTOM_NAVIGATION_BAR);
                    }, child: Text("Log In")),
                  ),
              
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomRichText(
                      firstText: "Don't have an account?",
                      secondText: "Request an account",
                      onTap: () {
                        Get.offAllNamed(Routes.SELECT_INSTITUTE);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

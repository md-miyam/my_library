import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_library/app/modules/common_widget/custom_text_field.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../common_widget/custom_rich_text.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Request an account",
                    style: AppTextStyles.spaceGroteskLarge28,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Get started with your access\nin just a few steps.",
                    style: AppTextStyles.medium12,
                    textAlign: TextAlign.center,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomTextField(
                      hintText: "Full Name",
                      keyboardType: TextInputType.text,
                    ),
                  ),

                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: CustomTextField(
                          hintText: "Roll No.",
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Flexible(
                        flex: 3,
                        child: CustomTextField(
                          hintText: "Reg No.",
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: CustomTextField(
                            hintText: "Department (CST)",
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Flexible(
                          flex: 2,
                          child: CustomTextField(
                            hintText: "Session",
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),

                  CustomTextField(
                    hintText: "Email account",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.h),
                      child: CustomTextField(
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
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.VERIFICATION);
                      },
                      child: Text("Send Request"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomRichText(
                      firstText: "Already have an account?",
                      secondText: "Log In",
                      onTap: () {
                        Get.offAllNamed(Routes.LOG_IN);
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../common_widget/custom_rich_text.dart';
import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({super.key});

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
                    "Verification",
                    style: AppTextStyles.spaceGroteskLarge28,
                  ),
                  Text(
                    "We sent Verification code to your email",
                    style: AppTextStyles.medium12,
                    textAlign: TextAlign.center,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.h),
                    child: Text(
                      "Please Check it in your email account. If you are not able to find it in your inbox, then check it out on spam section & Reload.",
                      style: AppTextStyles.medium12,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.snackbar(
                            "Successful",
                            "Congratulations, Your account has been successfully created.",
                          );
                          Get.offAllNamed(Routes.CUSTOM_BOTTOM_NAVIGATION_BAR);
                        },
                        child: Text("Reload"),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomRichText(
                      firstText: "Didn't receive a code!",
                      secondText: "Resend",
                      onTap: () {},
                    ),
                  ),

                  Text(
                    "00:59 sec",
                    style: AppTextStyles.medium12,
                    textAlign: TextAlign.center,
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

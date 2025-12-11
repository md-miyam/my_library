import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/image_path.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/select_institute_controller.dart';

class SelectInstituteView extends GetView<SelectInstituteController> {
  const SelectInstituteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select your Institute",
                  style: AppTextStyles.spaceGroteskLarge28,
                ),
                SizedBox(height: 8.h),
                Text(
                  "Please type down/select your institute name for Creating an account.",
                  style: AppTextStyles.medium12,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                CircleAvatar(
                  maxRadius: (Get.height * 0.055),
                  backgroundColor: AppColors.cardGreyColor,
                  child: Image.asset(ImagePath.logo, height: 55.r),
                ),
                Text("Library", style: AppTextStyles.spaceGroteskMedium20),
                SizedBox(height: 24.h),

                // DropdownButton
                _dropdownButton(),

                SizedBox(height: 24.h),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.selectedInstitute.value.isEmpty) {
                        Get.snackbar(
                          "Error",
                          "Please select an institute",
                          colorText: Colors.red,
                        );
                      } else {
                        Get.snackbar(
                          "Selected",
                          "You chose: ${controller.selectedInstitute.value}",
                        );
                        // Navigate to next screen or perform action
                      }
                    },
                    child: const Text("Next"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Obx _dropdownButton() {
    return Obx(
      () => DropdownButtonFormField<String>(
        isExpanded: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.school_outlined,
            color: AppColors.secondaryBlackColor,
          ),
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.secondaryBlackColor,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 10.h,
          ),
        ),
        hint: Text(
          'Select your institute',
          style: AppTextStyles.medium14.copyWith(
            color: AppColors.secondaryBlackColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        initialValue: controller.selectedInstitute.value.isEmpty
            ? null
            : controller.selectedInstitute.value,
        items: controller.govtPolytechnicInstitutes.map((institute) {
          return DropdownMenuItem<String>(
            value: institute,
            child: Text(
              institute,
              style: AppTextStyles.medium14.copyWith(
                color: AppColors.secondaryBlackColor,
                overflow: TextOverflow.ellipsis,
              ),
              textAlign: TextAlign.start,
            ),
          );
        }).toList(),
        onChanged: (value) => controller.setInstitute(value ?? ''),
        validator: (value) => value == null || value.isEmpty
            ? 'Please select your institute'
            : null,
        style: AppTextStyles.medium14.copyWith(
          color: AppColors.secondaryBlackColor,
        ),
      ),
    );
  }
}

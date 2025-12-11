import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color? firstTextColor;
  final Color? secondTextColor;
  final void Function()? onTap;

  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstTextColor,
    this.secondTextColor, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 5,
          child: Text(
            firstText,
            style: AppTextStyles.medium12.copyWith(
              color: firstTextColor ?? AppColors.secondaryTextColor,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Flexible(
          flex: 5,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Text(
                secondText,
                style: AppTextStyles.bold12.copyWith(
                  color: secondTextColor ?? AppColors.blackColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

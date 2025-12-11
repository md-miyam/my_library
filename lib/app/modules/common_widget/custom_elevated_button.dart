import 'package:flutter/material.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String childText;
  final void Function()? onTap;

  const CustomElevatedButton({super.key, required this.childText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColors.secondaryBlackColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(childText, style: AppTextStyles.medium13.copyWith(color: AppColors.whiteColor))),
      ),
    );
  }
}

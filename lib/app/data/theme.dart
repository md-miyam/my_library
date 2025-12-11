import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: 'Arial',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: AppColors.backgroundColor,
        foregroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.secondaryIconColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.secondaryIconColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.secondaryIconColor),
      ),
      hintStyle: const TextStyle(color: AppColors.secondaryTextColor),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.blackColor,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        side: const BorderSide(color: AppColors.secondaryIconColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        textStyle: AppTextStyles.medium16,
      ),
    ),
  );
}

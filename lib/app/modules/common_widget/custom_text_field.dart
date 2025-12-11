import 'package:flutter/material.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String topHintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    this.keyboardType,
    this.hintText,
    required this.topHintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topHintText,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppTextStyles.medium16.copyWith(color: AppColors.primaryColor)),
        SizedBox(height: 4),
        TextField(
          cursorColor: AppColors.greyButtonColor,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}

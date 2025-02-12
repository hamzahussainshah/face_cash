import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui/common/app_colors.dart';
import '../ui/common/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final int? maxLines;
  final FocusNode? focusNode;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final bool obscure;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final String? suffixText;
  final Function(String)? onFieldSubmitted;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validate,
    this.prefixIcon,
    this.obscure = false,
    this.keyboardType,
    this.onTap,
    this.suffixText,
    this.maxLines,
    this.focusNode,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    // Create a local ValueNotifier if it's an obscure field
    final ValueNotifier<bool> obscureNotifier = ValueNotifier<bool>(obscure);

    return ValueListenableBuilder<bool>(
      valueListenable: obscureNotifier,
      builder: (context, isObscure, child) {
        return TextFormField(
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines ?? 1,
          onTap: onTap,
          readOnly: onTap == null ? false : true,
          keyboardType: keyboardType,
          cursorColor: AppColors.blackColor,
          cursorHeight: 22.h,
          cursorWidth: 1.w,
          cursorRadius: Radius.circular(0.3.r),
          textAlignVertical: TextAlignVertical.center,
          obscureText: obscure ? isObscure : false,
          controller: controller,
          obscuringCharacter: '*',
          onChanged: onChanged,
          validator: validate,
          focusNode: focusNode,
          style: AppTextStyles.regularSmall,
          decoration: InputDecoration(
            fillColor: AppColors.kcSolidGrey, // Background color
            filled: true, // Ensures background color is applied
            suffix: suffixText != null
                ? Text(
                    suffixText!,
                    style: AppTextStyles.regularSmall.copyWith(
                      color: AppColors.gray500,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 16.w,
            ),
            hintText: hintText,
            hintStyle: AppTextStyles.regularSmall.copyWith(
              color: AppColors.kcLightGrey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none, // No border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none, // No border color
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none, // No border color
            ),
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: prefixIcon,
                  )
                : null,
            prefixIconConstraints: BoxConstraints(
              minWidth: 40.w,
              minHeight: 40.h,
            ),
            suffixIcon: obscure
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: GestureDetector(
                      onTap: () {
                        obscureNotifier.value = !isObscure;
                      },
                      child: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.gray500,
                      ),
                    ),
                  )
                : null,
            suffixIconConstraints: BoxConstraints(
              minWidth: 20.w,
              minHeight: 20.h,
            ),
          ),
        );
      },
    );
  }
}

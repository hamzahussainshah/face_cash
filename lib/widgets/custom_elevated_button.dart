import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui/common/app_colors.dart';
import '../ui/common/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.elevation,
    this.minimumSize,
    this.isDisabled = false,
    this.isBgColor = true,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.buttonTextStyle,
  });

  final TextStyle? buttonTextStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isDisabled;
  final bool isBgColor;
  final String text;
  final Size? minimumSize;
  final double? elevation;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    bool useGradient = backgroundColor == null && isBgColor && !isDisabled;

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: useGradient
            ? const LinearGradient(
                colors: [AppColors.kcSolidBlue, AppColors.kcLightBlue],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )
            : null,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: useGradient
              ? Colors.transparent // Transparent to show the gradient
              : isDisabled
                  ? AppColors.gray100
                  : backgroundColor, // Use manually selected color if provided
          minimumSize: minimumSize ?? Size(335.w, 44.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: isDisabled
                ? BorderSide.none
                : backgroundColor !=
                        null // Add border only if manual color is set
                    ? const BorderSide(color: Color(0xFF7E7E7E), width: 1)
                    : BorderSide.none,
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: buttonTextStyle ??
              AppTextStyles.regularSmall.copyWith(
                color: isDisabled ? AppColors.gray300 : AppColors.whiteColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}

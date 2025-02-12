import 'package:face_cash/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class CustomOtpTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onCompleted;

  const CustomOtpTextField({
    Key? key,
    required this.controller,
    this.onCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48.w, // Width
      height: 52.h, // Height
      textStyle: TextStyle(fontSize: 18.sp, color: Colors.white),
      decoration: BoxDecoration(
        color: AppColors.kcSolidGrey, // Background color
        borderRadius: BorderRadius.circular(16.r), // Border radius
      ),
    );

    return Pinput(
      controller: controller,
      focusNode: FocusNode(),
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
              color: Colors.blueAccent, width: 2), // Highlight border
        ),
      ),
      submittedPinTheme: defaultPinTheme,
      onCompleted: onCompleted,
    );
  }
}

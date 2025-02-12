import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle largeBold = GoogleFonts.poppins(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
  static TextStyle largeMedium = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  static TextStyle semibold = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.kcLightGrey,
  );
  static TextStyle mediumBold = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.kcLightGrey,
  );
  static TextStyle regularSmall = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteColor,
  );
}

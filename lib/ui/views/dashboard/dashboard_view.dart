import 'dart:typed_data';

import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/app_styles.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/assets.dart';
import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          71.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 105.w,
            ),
            child: CustomImageView(
              imagePath: AppImages.logoImage,
              width: 164.w,
              height: 50.h,
            ),
          ),
          12.verticalSpace,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            width: double.infinity,
            height: 184.h,
            decoration: BoxDecoration(
              color: AppColors.kcSolidGrey,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Daniel Carter',
                  style: AppTextStyles.largeMedium,
                ),
                Spacer(),
                CustomElevatedButton(text: 'View Statement', onPressed: () {}),
              ],
            ),
          ),
          35.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                buildCustomContainerNavigation(
                  onTap: () {
                    viewModel.navigateToHistoryScreenView();
                  },
                  title: 'History',
                  svgPath: AppSVGs.historyIcon,
                ),
                13.horizontalSpace,
                buildCustomContainerNavigation(
                  onTap: () {
                    viewModel.navigateToDownloadChallanView();
                  },
                  title: 'Download Challan',
                  svgPath: AppSVGs.challanIcon,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: buildCustomContainerNavigation(
              onTap: () {
                viewModel.navigateToDisputeFormView();
              },
              title: 'Dispute Form',
              svgPath: AppSVGs.disputeIcon,
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildCustomContainerNavigation({
    required String title,
    required String svgPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        width: 161.w,
        height: 85.h,
        decoration: BoxDecoration(
          color: AppColors.kcBackground,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.kcLightGrey,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: svgPath,
            ),
            Spacer(),
            Text(
              title,
              style: AppTextStyles.mediumBold.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}

import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/app_styles.dart';
import 'package:face_cash/ui/common/assets.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_image_widget.dart';
import 'package:face_cash/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'verify_email_viewmodel.dart';

class VerifyEmailView extends StackedView<VerifyEmailViewModel> {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyEmailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 105.w, vertical: 71.h),
              child: CustomImageView(
                imagePath: AppImages.logoImage,
                width: 164.w,
                height: 50.h,
              ),
            ),
            40.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Reset Password',
                style: AppTextStyles.largeBold,
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter your email to reset your password.',
                style: AppTextStyles.mediumBold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter email',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Email',
                controller: viewModel.emailController,
                prefixIcon: CustomImageView(
                  svgPath: AppSVGs.emailIcon,
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                  text: 'Submit',
                  onPressed: () {
                    viewModel.navigateToOtpVerificationView();
                  }),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                text: 'Back',
                onPressed: () {
                  viewModel.navigateToLoginScreenView();
                },
                backgroundColor: AppColors.kcLightBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  VerifyEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyEmailViewModel();
}

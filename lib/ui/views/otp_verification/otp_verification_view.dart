import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/widgets/common/custom_otp_textfield.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/app_styles.dart';
import '../../common/assets.dart';
import 'otp_verification_viewmodel.dart';

class OtpVerificationView extends StackedView<OtpVerificationViewModel> {
  const OtpVerificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtpVerificationViewModel viewModel,
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
                'OTP Verification',
                style: AppTextStyles.largeBold,
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'We’ve sent a code to your email.',
                style: AppTextStyles.mediumBold,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomOtpTextField(
                controller: viewModel.otpController,
                onCompleted: (String pin) {
                  print("Entered OTP: $pin");
                },
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Didn't receive Otp?",
                    style: AppTextStyles.regularSmall,
                  ),
                  3.horizontalSpace,
                  Text('Re-send',
                      style: AppTextStyles.regularSmall.copyWith(
                        color: AppColors.kcLightBlue,
                      )),
                ],
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                  text: 'Verify',
                  onPressed: () {
                    viewModel.navigateToResetPasswordView();
                  }),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                text: 'Back',
                onPressed: () {
                  viewModel.navigateToVerifyEmailView();
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
  OtpVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpVerificationViewModel();
}

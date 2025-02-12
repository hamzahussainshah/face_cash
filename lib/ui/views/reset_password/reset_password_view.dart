import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/app_styles.dart';
import '../../common/assets.dart';
import 'reset_password_viewmodel.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordViewModel viewModel,
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
                'Set a new password for your account.',
                style: AppTextStyles.mediumBold,
              ),
            ),
            30.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter Password',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Password',
                controller: viewModel.passwordController,
                obscure: true,
                prefixIcon: CustomImageView(
                  svgPath: AppSVGs.lockIcon,
                ),
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Confirm Password',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Confirm password',
                controller: viewModel.confirmPasswordController,
                obscure: true,
                prefixIcon: CustomImageView(
                  svgPath: AppSVGs.lockIcon,
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                  text: 'Confirm',
                  onPressed: () {
                    viewModel.navigateToLoginScreenView();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ResetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordViewModel();
}

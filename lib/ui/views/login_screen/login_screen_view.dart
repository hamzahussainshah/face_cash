import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/app_styles.dart';
import 'package:face_cash/ui/common/assets.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_image_widget.dart';
import 'package:face_cash/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'login_screen_viewmodel.dart';

class LoginScreenView extends StackedView<LoginScreenViewModel> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
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
                'LOGIN',
                style: AppTextStyles.largeBold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Please enter your details ',
                style: AppTextStyles.mediumBold,
              ),
            ),
            30.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Text(
                'Enter username',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Username',
                controller: viewModel.usernameController,
                prefixIcon: CustomImageView(
                  svgPath: AppSVGs.userIcon,
                  color: AppColors.whiteColor,
                  width: 20.w,
                  height: 20.h,
                ),
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter password',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'password',
                controller: viewModel.passwordController,
                obscure: true,
                prefixIcon: CustomImageView(
                  svgPath: AppSVGs.lockIcon,
                ),
              ),
            ),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: viewModel.toggleCheckbox,
                    child: Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.w),
                        borderRadius: BorderRadius.circular(4.r),
                        color: viewModel.isChecked
                            ? Colors.white
                            : Colors.transparent,
                      ),
                      child: viewModel.isChecked
                          ? Icon(Icons.check, size: 18.w, color: Colors.black)
                          : null,
                    ),
                  ),
                  4.horizontalSpace,
                  Text(
                    'Remember for 30 days',
                    style: AppTextStyles.regularSmall,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateToVerifyEmailView();
                    },
                    child: Text('Forgot Password',
                        style: AppTextStyles.regularSmall.copyWith(
                          color: AppColors.kcLightBlue,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kcLightBlue,
                          decorationThickness: 2,
                        )),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                  text: 'LogIn',
                  onPressed: () {
                    viewModel.navigateToDashboardView();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginScreenViewModel();
}

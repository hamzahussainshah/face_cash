import 'package:dotted_border/dotted_border.dart';
import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/app_styles.dart';
import 'package:face_cash/ui/common/assets.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_image_widget.dart';
import 'package:face_cash/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    'Register Now!',
                    style: AppTextStyles.largeBold,
                  ),
                ],
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    'Fill the information carefully',
                    style: AppTextStyles.mediumBold,
                  ),
                ],
              ),
            ),
            30.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter username',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                  hintText: 'Username', controller: viewModel.nameController),
            ),
            15.verticalSpace,
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
                  hintText: 'Email', controller: viewModel.emailController),
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
                hintText: 'Password',
                controller: viewModel.passwordController,
                obscure: true,
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Confirm password',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Confirm Password',
                controller: viewModel.confirmPasswordController,
                obscure: true,
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter phone no',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                  hintText: 'Phone No',
                  controller: viewModel.phoneNoController),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter cnic',
                style: AppTextStyles.regularSmall,
              ),
            ),
            5.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                  hintText: 'CNIC No', controller: viewModel.cnicController),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(
                            AppImages.circleImage), // Image inside CircleAvatar
                      ),
                      Positioned(
                        child: CustomImageView(
                          svgPath: AppSVGs.uploadIcon,
                          width: 18.w,
                          height: 14.h,
                        ),
                      ),
                    ],
                  ),
                  20.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upload Photo',
                        style: AppTextStyles.regularSmall,
                      ),
                      5.verticalSpace,
                      Row(
                        children: [
                          DottedBorder(
                            color: AppColors.kcSolidGrey,
                            strokeWidth: 2,
                            dashPattern: [7, 8],
                            borderType: BorderType.RRect,
                            radius: Radius.circular(12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 86.w, vertical: 13.h),
                              width: 248.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Text(
                                'Select Image',
                                style: AppTextStyles.regularSmall.copyWith(
                                  color: AppColors.kcLightGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(
                  text: 'Register',
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
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}

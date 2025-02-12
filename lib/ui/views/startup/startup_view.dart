import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:face_cash/ui/common/ui_helpers.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/app_colors.dart';
import '../../common/assets.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.kcSolidBlue,
              AppColors.kcLightBlue
            ], // kcLightBlue -> kcSolidBlue
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0.2, 0.8],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 67.w),
          child: Column(
            spacing: 25.h,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: AppImages.appImage,
                width: 240.w,
                height: 240.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: AppImages.logoImage,
                    width: 164.w,
                    height: 50.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}

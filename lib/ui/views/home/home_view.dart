import 'package:face_cash/ui/common/assets.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25.h,
          children: [
            CustomElevatedButton(
                text: 'Login',
                onPressed: () {
                  viewModel.navigateToLoginScreenView();
                }),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: () {
                      viewModel.navigateToSignUpView();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

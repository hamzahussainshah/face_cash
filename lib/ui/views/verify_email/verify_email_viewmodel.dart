import 'package:face_cash/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class VerifyEmailViewModel extends BaseViewModel {
  final TextEditingController emailController = TextEditingController();
  final _navigationService = locator<NavigationService>();

  navigateToOtpVerificationView() {
    _navigationService.navigateToOtpVerificationView();
  }

  navigateToLoginScreenView() {
    _navigationService.navigateToLoginScreenView();
  }
}

import 'package:face_cash/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class OtpVerificationViewModel extends BaseViewModel {
  final TextEditingController otpController = TextEditingController();
  final _navigationService = locator<NavigationService>();

  navigateToResetPasswordView() {
    _navigationService.navigateToResetPasswordView();
  }

  navigateToVerifyEmailView() {
    _navigationService.navigateToVerifyEmailView();
  }
}

import 'package:face_cash/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ResetPasswordViewModel extends BaseViewModel {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _navigationService = locator<NavigationService>();

  navigateToLoginScreenView() {
    _navigationService.navigateToLoginScreenView();
  }
}

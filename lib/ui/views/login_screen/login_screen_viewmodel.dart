import 'package:face_cash/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginScreenViewModel extends BaseViewModel {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleCheckbox() {
    _isChecked = !_isChecked;
    notifyListeners(); // Notify UI to rebuild
  }

  final _navigationService = locator<NavigationService>();

  navigateToDashboardView() {
    _navigationService.navigateToDashboardView();
  }

  navigateToVerifyEmailView() {
    _navigationService.navigateToVerifyEmailView();
  }
}

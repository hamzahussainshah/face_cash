import 'package:face_cash/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SignUpViewModel extends BaseViewModel {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController cnicController = TextEditingController();

  final _navigationService = locator<NavigationService>();

  navigateToLoginScreenView() {
    _navigationService.navigateToLoginScreenView();
  }
}

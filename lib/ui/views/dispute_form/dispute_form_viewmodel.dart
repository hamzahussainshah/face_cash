import 'package:face_cash/app/app.dialogs.dart';
import 'package:face_cash/app/app.locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DisputeFormViewModel extends BaseViewModel {
  final DialogService _dialogService = locator<DialogService>();
  TextEditingController diputeTitleController = TextEditingController();
  TextEditingController transactionIDController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void callDisputeDialog(bool isSubmitted){
    _dialogService.showCustomDialog(
      variant: DialogType.reportStatus,
      data: {
        "submitted": isSubmitted,
      }
    );
  }

}

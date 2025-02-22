import 'package:face_cash/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class DashboardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToHistoryScreenView() {
    _navigationService.navigateToHistoryScreenView();
  }

  navigateToDownloadChallanView() {
    _navigationService.navigateToDownloadChallanView();
  }

  navigateToDisputeFormView() {
    _navigationService.navigateToDisputeFormView();
  }
}

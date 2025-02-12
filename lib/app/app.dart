import 'package:face_cash/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:face_cash/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:face_cash/ui/views/home/home_view.dart';
import 'package:face_cash/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:face_cash/ui/views/login_screen/login_screen_view.dart';
import 'package:face_cash/ui/views/sign_up/sign_up_view.dart';
import 'package:face_cash/ui/views/dashboard/dashboard_view.dart';
import 'package:face_cash/ui/views/verify_email/verify_email_view.dart';
import 'package:face_cash/ui/views/otp_verification/otp_verification_view.dart';
import 'package:face_cash/ui/views/reset_password/reset_password_view.dart';
import 'package:face_cash/ui/views/history_screen/history_screen_view.dart';
import 'package:face_cash/ui/views/download_challan/download_challan_view.dart';
import 'package:face_cash/ui/views/dispute_form/dispute_form_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: VerifyEmailView),
    MaterialRoute(page: OtpVerificationView),
    MaterialRoute(page: ResetPasswordView),
    MaterialRoute(page: HistoryScreenView),
    MaterialRoute(page: DownloadChallanView),
    MaterialRoute(page: DisputeFormView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

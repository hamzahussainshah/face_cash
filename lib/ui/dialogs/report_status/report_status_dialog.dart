import 'package:face_cash/ui/common/app_styles.dart';
import 'package:face_cash/ui/common/assets.dart';
import 'package:face_cash/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'report_status_dialog_model.dart';

const double _graphicSize = 60;

class ReportStatusDialog extends StackedView<ReportStatusDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ReportStatusDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ReportStatusDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: AppColors.kcLightBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          width: 335.w,
          height: 316.h,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: request.data['submitted']
                                ? AppSVGs.reportSubmittedIcon
                                : AppSVGs.reportCancelIcon,
                            width: 55.w,
                            color: AppColors.whiteColor,
                          ),
                          10.verticalSpace,
                          Text(
                            request.data['submitted']
                                ? 'Report Submitted!'
                                : 'Report Submission Fails',
                            style: AppTextStyles.largeMedium,
                            textAlign: TextAlign.center,
                          ),
                          10.verticalSpace,
                          Text(
                            request.data['submitted']
                                ? "Thank you for submitting your issue. Our team is reviewing your request and will get back to you within 24-48 hours. You can track the status of your report in the 'View History' section."
                                : "Oops! Something went wrong. Please check your internet connection and try again.",
                            style: AppTextStyles.semibold,
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ReportStatusDialogModel viewModelBuilder(BuildContext context) =>
      ReportStatusDialogModel();
}

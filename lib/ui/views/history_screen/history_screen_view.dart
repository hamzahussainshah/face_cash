import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/ui/common/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/assets.dart';
import 'history_screen_viewmodel.dart';

class HistoryScreenView extends StackedView<HistoryScreenViewModel> {
  const HistoryScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HistoryScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            71.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 105.w,
              ),
              child: CustomImageView(
                imagePath: AppImages.logoImage,
                width: 164.w,
                height: 50.h,
              ),
            ),
            13.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: AppSVGs.historyIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                  2.horizontalSpace,
                  Text('History',style: AppTextStyles.semiLarge,),
                ],
              ),
            ),
            25.verticalSpace,
            Column(
              spacing: 20.h,
              children: [
                buildHistoryContainer(
                  title: 'Payment completed for Invoice #12345',
                  price: 'Amount: 105',
                  status: 'Completed',
                  datetime: '02/11/2024 10:00PM',
                ),
                buildHistoryContainer(
                  title: 'Payment completed for Invoice #12365',
                  price: 'Amount: 407',
                  status: 'Pending',
                  datetime: '02/11/2024 10:00PM',
                ),
                buildHistoryContainer(
                  title: 'Payment completed for Invoice #12355',
                  price: 'Amount: 300',
                  status: 'Completed',
                  datetime: '02/11/2024 10:00PM',
                ),
                buildHistoryContainer(
                  title: 'Payment completed for Invoice #12395',
                  price: 'Amount: 700',
                  status: 'Completed',
                  datetime: '02/11/2024 10:00PM',
                ),
              ],
            ),
        
          ],
        ),
      ),
    );
  }

  Container buildHistoryContainer({
    required String title,
    required String price,
    required String status,
    required String datetime,
}) {
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
          width: double.infinity,
            height: 114.h,
          decoration: BoxDecoration(
            color: AppColors.kcSolidGrey,
            borderRadius: BorderRadius.circular(12.r),

          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(title,style: AppTextStyles.regularSmall,),

                ],
              ),
              10.verticalSpace,
              Row(
                children: [
                  Text(price,style: AppTextStyles.regularSmall,),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 305.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.whiteColor,
                        width: 1.w,
                      ),
                    ),
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                children: [
                  Text(status,style: AppTextStyles.regularSmall,),
                  Spacer(),
                  Text(datetime,style: AppTextStyles.regularSmall,),
                ],
              ),
            ],
          ),
        );
  }

  @override
  HistoryScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HistoryScreenViewModel();
}

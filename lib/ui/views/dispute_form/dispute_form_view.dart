import 'package:dotted_border/dotted_border.dart';
import 'package:face_cash/ui/common/app_colors.dart';
import 'package:face_cash/widgets/custom_elevated_button.dart';
import 'package:face_cash/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/custom_image_widget.dart';
import '../../common/app_styles.dart';
import '../../common/assets.dart';
import 'dispute_form_viewmodel.dart';

class DisputeFormView extends StackedView<DisputeFormViewModel> {
  const DisputeFormView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DisputeFormViewModel viewModel,
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
                    svgPath: AppSVGs.disputeIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                  10.horizontalSpace,
                  Text(
                    'Dispute Form',
                    style: AppTextStyles.semiLarge,
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
              width: double.infinity,
              height: 366.h,
              decoration: BoxDecoration(
                color: AppColors.kcLightBackground,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dispute Title',style: AppTextStyles.regularSmall,),
                  5.verticalSpace,
                  CustomTextField(hintText: 'Type here', controller: viewModel.diputeTitleController),
                  10.verticalSpace,
                  Text('Transaction ID',style: AppTextStyles.regularSmall,),
                  5.verticalSpace,
                  CustomTextField(hintText: 'Type here', controller: viewModel.transactionIDController),
                  10.verticalSpace,
                  Text('Dispute Description',style: AppTextStyles.regularSmall,),
                 5.verticalSpace,
                 SizedBox(
                   width: double.infinity,
                   height: 92.h,
                   child:
                     TextField(
                       style: AppTextStyles.regularSmall,
                       minLines: 3,
                       maxLines: 8,
                       cursorColor: AppColors.blackColor,
                       cursorWidth: 1,
                       decoration: InputDecoration(
                         hintText: 'Type description',
                         hintStyle: AppTextStyles.regularSmall.copyWith(
                           color: AppColors.kcLightGrey,),
                         hintMaxLines: 1,
                         filled: true,
                         fillColor: AppColors.kcSolidGrey,
                         contentPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12.r),
                           borderSide: BorderSide.none,
                           ),
                         ),
                       ),
                   ),
                  10.verticalSpace,
                  Text('Upload Document/Image',style: AppTextStyles.regularSmall,),
                  5.verticalSpace,
                  DottedBorder(
                    color: AppColors.kcSolidGrey,
                    strokeWidth: 2,
                    dashPattern: [7, 8],
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 86.w, vertical: 13.h),
                      width: double.infinity,
                      height: 44.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        'Select Image',
                        style: AppTextStyles.regularSmall.copyWith(
                          color: AppColors.kcLightGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(text: 'Submit Dispute', onPressed: (){}),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomElevatedButton(text: 'Submit Dispute', onPressed: (){},backgroundColor: AppColors.kcLightBackground,),
            ),

          ],
        ),
      ),
    );
  }

  @override
  DisputeFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DisputeFormViewModel();
}

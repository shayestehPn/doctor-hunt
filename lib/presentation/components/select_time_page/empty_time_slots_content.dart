import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../custom_bordered_button.dart';
import '../custom_solid_green_button.dart';


class EmptyTimeSlotsContent extends StatelessWidget {

  final String nextAvailabilityDate;
  final Function() contactButtonOnClick;
  final Function() greenButtonOnClick;


  const EmptyTimeSlotsContent({
    super.key,
    required this.nextAvailabilityDate,
    required this.contactButtonOnClick,
    required this.greenButtonOnClick
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 21.h),
          child: Text(
            "No slots available",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: AppStyles.regularFont
            ),
          ),
        ),
        CustomSolidGreenButton(
            height: 54.h,
            width: 306.w,
            text: "Next availability $nextAvailabilityDate",
            onClick: (){
              greenButtonOnClick();
            }
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 13.h),
          child: Text(
            "OR",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: AppStyles.regularFont
            ),
          ),
        ),
        CustomBorderedButton(
          height: 54.h,
          width: 306.w,
          borderColor: AppColors.green,
          textColor: AppColors.green,
          title: "Contact Clinic",
          onClick: (){
           contactButtonOnClick();
          },
        ),
      ],
    );
  }
}

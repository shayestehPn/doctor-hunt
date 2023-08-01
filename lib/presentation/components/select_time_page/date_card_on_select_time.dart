import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/date_model_for_booking.dart';


class DateCardOnSelectTime extends StatelessWidget {

  final DateModelForBooking model;
  final bool isSelected;
  final bool indexIsOdd;
  final Function() onClick;

  const DateCardOnSelectTime({
    super.key,
    required this.model,
    required this.isSelected,
    required this.indexIsOdd,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: 70.h,
        width: 130.w,
        margin: EdgeInsets.only(right: 16.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: indexIsOdd?AppColors.green:Colors.transparent,
          borderRadius: AppStyles.cardBorderRadius,
          border: Border.all(
            width: 1.w,
            color: indexIsOdd?AppColors.green:AppColors.lightGray
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${model.date.month} ${model.date.day}",
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: AppStyles.mediumFont,
                  fontSize: 16.sp,
                  color: indexIsOdd?Colors.white:AppColors.black
              ),

            ),
            Text(
              "${model.timeSlotsList.length} slots available",
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: AppStyles.mediumFont,
                  fontSize: 16.sp,
                  color: indexIsOdd?Colors.white:AppColors.black
              ),

            ),
          ],
        )
      ),
    );
  }
}

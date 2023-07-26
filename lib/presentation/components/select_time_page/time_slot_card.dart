import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/time_model.dart';


class TimeSlotCard extends StatelessWidget {

  final TimeModel timeModel;
  final bool isSelected;
  final Function() onClick;

  const TimeSlotCard({super.key, required this.timeModel, required this.isSelected, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected?AppColors.green:AppColors.lightGreen,
          borderRadius: AppStyles.cardBorderRadius
        ),
        alignment: Alignment.center,
        child: Text(
          "${timeModel.time} ${timeModel.type}",
          style: TextStyle(
            fontWeight: AppStyles.mediumFont,
            fontSize: 13.sp,
            color: isSelected?Colors.white:AppColors.green
          ),
        ),
      ),
    );
  }
}

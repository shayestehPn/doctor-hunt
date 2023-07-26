import 'package:doctor_hunt/presentation/components/select_time_page/time_slot_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/time_model.dart';


class TimeSlotsList extends StatelessWidget {

  final List<TimeModel> timeSlotsList;
  final int selectedTimeSlotIndex;
  final Function(int index) selectTime;

  const TimeSlotsList({
    super.key,
    required this.timeSlotsList,
    required this.selectedTimeSlotIndex,
    required this.selectTime
  });

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        physics: const ScrollPhysics(),
        childAspectRatio: 1.9,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        shrinkWrap: true,
        crossAxisCount:4,
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
        children: List.generate(timeSlotsList.length, (int position) {
          return TimeSlotCard(
            timeModel: timeSlotsList[position],
            isSelected: selectedTimeSlotIndex==position,
            onClick: () {
              selectTime(position);
            },);
        } )
    );
  }
}

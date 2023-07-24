import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/date_model_for_booking.dart';
import 'date_card_on_select_time.dart';

class DatesListOnSelectTime extends StatelessWidget {

  final List<DateModelForBooking> datesList;
  final int selectedDateIndex;
  final Function(int index) selectDate;

  const DatesListOnSelectTime({
    super.key,
    required this.datesList,
    required this.selectedDateIndex,
    required this.selectDate
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70.h,
      margin: EdgeInsets.only(top: 24.h),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(left: 20.w,right: 4.w),
        itemCount: datesList.length,
        itemBuilder: (context, index) {
          return  DateCardOnSelectTime(
              model: datesList[index],
              isSelected: selectedDateIndex==index,
              indexIsOdd: index.isOdd,
            onClick: () {
                selectDate(index);
            },
          );
        },
      ),
    );
  }
}

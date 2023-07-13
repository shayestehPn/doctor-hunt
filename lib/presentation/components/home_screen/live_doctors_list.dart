import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_live_model.dart';
import 'live_doctor_card.dart';

class LiveDoctorsList extends StatelessWidget {

  final List<DoctorLiveModel> liveDoctorsList;

  const LiveDoctorsList({super.key, required this.liveDoctorsList});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 168.h,
      margin: EdgeInsets.only(top: 20.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(left: 20.w,right: 5.w),
        itemCount: liveDoctorsList.length,
        itemBuilder: (context, index) {
          return  LiveDoctorCard(model: liveDoctorsList[index]);
        },
      ),
    );
  }
}

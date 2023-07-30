import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/model/doctor_model.dart';
import 'doctor_card_for_find_doctors.dart';


class FoundDoctorsList extends StatelessWidget {

  final List<DoctorModel> doctorsList;
  final Function(int index) itemBookButtonOnClick;

  const FoundDoctorsList({super.key, required this.doctorsList, required this.itemBookButtonOnClick});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        padding:  EdgeInsets.only(top: 14.h, bottom: 24.h),
        shrinkWrap: true,
        itemCount: doctorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return  DoctorCardForFindDoctors(
            model: doctorsList[index],
            bookOnClick: () {
              itemBookButtonOnClick(index);
            },
          );
        }
    );
  }
}

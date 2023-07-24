import 'package:doctor_hunt/constants/colors.dart';
import 'package:doctor_hunt/constants/styles.dart';
import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:doctor_hunt/presentation/components/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/select_time/select_time_cubit.dart';
import '../../business_logic/select_time/select_time_state.dart';
import '../components/app_bar_with_back_and_magnifier.dart';
import '../components/five_stars.dart';
import '../components/images/png_images.dart';
import '../components/loading_dilaog.dart';
import '../components/select_time_page/date_card_on_select_time.dart';
import '../components/select_time_page/dates_list_on_select_time.dart';
import '../components/select_time_page/doctor_card_on_select_time.dart';


class SelectTimePage extends StatelessWidget {
  const SelectTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SelectTimeCubit>(
        create: (context) {
          final cubit = SelectTimeCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<SelectTimeCubit, SelectTimeState>(
          listener: (context, state) {
            if (state is Failure) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if(state is Loading){
              return const LoadingDialog();
            }
            if(state is Success){
              return  Scaffold(
                  body: Material(
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                          ),
                          Positioned(
                            top: 0,
                            left: -20.w,
                            child: SizedBox(
                              height: 216.w,
                              width: 216.w,
                              child: PngImage.blueBlurPng,
                            ),
                          ),
                          Column(
                            children: [
                               AppBarWithBackAndMagnifier(
                                 backOnClick: () {
                                   Get.back();
                                 },
                                 title: "Select Time",
                                 magnifierOnClick: () {

                                 },
                               ),
                              Expanded(
                                child: ListView(
                                  shrinkWrap: false,
                                  children: [
                                    SizedBox(height: 34.h),
                                    DoctorCardOnSelectTime(model: state.dto.doctorModel),
                                    Container(
                                      height: 70.h,
                                      margin: EdgeInsets.only(top: 24.h),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        physics: const ClampingScrollPhysics(),
                                        padding: EdgeInsets.only(left: 20.w,right: 4.w),
                                        itemCount: state.dto.availableDatesList.length,
                                        itemBuilder: (context, index) {
                                          return  DateCardOnSelectTime(
                                            model: state.dto.availableDatesList[index],
                                            isSelected: state.selectedDateIndex==index,
                                            indexIsOdd: index.isOdd,
                                            onClick: () {
                                              context.read<SelectTimeCubit>().selectDate(index);
                                              print(state.selectedDateIndex);
                                            },
                                          );
                                        },
                                      ),
                                    )
                                    // DatesListOnSelectTime(
                                    //   datesList: state.dto.availableDatesList,
                                    //   selectedDateIndex: state.selectedDateIndex,
                                    //   selectDate: (int index) {
                                    //     context.read<SelectTimeCubit>().selectDate(0);
                                    //     print("99999999999"+" "+index.toString());
                                    //   },
                                    // ),
                                    ,
                                    state.selectedDateIndex!=-1?
                                    Text(
                                        "${state.dto.availableDatesList[state.selectedDateIndex].date.month} "
                                            "${state.dto.availableDatesList[state.selectedDateIndex].date.day}"
                                    ):Container(height: 90,width: 90,color: Colors.red,)
                                  ],
                                ),
                              )
                            ],

                          )
                        ],
                      )
                  )
              );
            }
            else{
              return Container();
            }
          },
        ),
      ),
    );
  }
}

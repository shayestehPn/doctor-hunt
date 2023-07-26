import 'package:doctor_hunt/constants/styles.dart';
import 'package:doctor_hunt/presentation/components/select_time_page/empty_time_slots_content.dart';
import 'package:doctor_hunt/presentation/components/select_time_page/time_slots_list.dart';
import 'package:doctor_hunt/presentation/components/stack_with_blurs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/select_time/select_time_cubit.dart';
import '../../business_logic/select_time/select_time_state.dart';
import '../components/app_bar_with_back_and_magnifier.dart';
import '../components/loading_dilaog.dart';
import '../components/select_time_page/dates_list_on_select_time.dart';
import '../components/select_time_page/doctor_card_on_select_time.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;


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
              return StackWithBlurs(
                  showBlueBlur: true,
                  showGreenBlur: true,
                  pageContent: Column(
                    children: [
                      AppBarWithBackAndMagnifier(
                        backOnClick: () {
                          Get.back();
                        },
                        title: "Select Time",
                        showMagnifier: false,
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: false,
                          children: [
                            SizedBox(height: 34.h),
                            DoctorCardOnSelectTime(model: state.dto.doctorModel),
                            DatesListOnSelectTime(
                              datesList: state.dto.availableDatesList,
                              selectedDateIndex: state.selectedDateIndex,
                              selectDate: (int index)  {
                                context.read<SelectTimeCubit>().selectDate(index);
                                if(state.dto.availableDatesList[index].timeSlotsList.isEmpty){
                                  context.read<SelectTimeCubit>().findNextAvailableDate(index).then((value){
                                    //  print("iojio"+state.dto.nextAvailabilityDate.month);
                                  });
                                }
                              },
                            ),
                            SizedBox(height: 20.h),
                            state.dto.availableDatesList.isNotEmpty?
                            Text(
                              state.selectedDateIndex==0?"today ${state.dto.availableDatesList[state.selectedDateIndex].date.month} "
                                  "${state.dto.availableDatesList[state.selectedDateIndex].date.day}":
                             "${state.dto.availableDatesList[state.selectedDateIndex].date.month} "
                            "${state.dto.availableDatesList[state.selectedDateIndex].date.day}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: AppStyles.mediumFont
                              ),
                            ):Container(),
                            state.dto.availableDatesList.isNotEmpty? state.dto.availableDatesList[state.selectedDateIndex].timeSlotsList.isNotEmpty?
                            TimeSlotsList(
                              timeSlotsList:  state.dto.availableDatesList[state.selectedDateIndex].timeSlotsList,
                              selectedTimeSlotIndex: state.selectedTimeSlotIndex,
                              selectTime: (int index) {
                                context.read<SelectTimeCubit>().selectTimeSlot(index);
                              },
                            ):
                            EmptyTimeSlotsContent(
                              nextAvailabilityDate:
                              state.dto.nextAvailabilityDate.month!=""?
                              "${state.dto.nextAvailabilityDate.month} ${state.dto.nextAvailabilityDate.day}"
                                  :"later",
                              contactButtonOnClick: (){
                                UrlLauncher.launch("tel://${state.dto.clinicPhoneNumber}");
                              },
                              greenButtonOnClick: () {
                                if(state.dto.nextAvailabilityDateIndex!=-1){
                                  context.read<SelectTimeCubit>().selectDate(state.dto.nextAvailabilityDateIndex);
                                }

                              },
                            )
                                :Container()
                          ],
                        ),
                      )
                    ],

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

import 'package:doctor_hunt/business_logic/find_doctors/find_doctors_cubit.dart';
import 'package:doctor_hunt/presentation/components/find_doctors_page/found_doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/find_doctors/find_doctors_state.dart';
import '../components/find_doctors_page/find_doctor_app_bar.dart';
import '../components/find_doctors_page/find_doctor_search_text_field.dart';
import '../components/images/png_images.dart';
import '../components/loading_dilaog.dart';


class FindDoctorsPage extends StatelessWidget {

   FindDoctorsPage({Key? key}) : super(key: key);

  TextEditingController doctorTextFieldController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FindDoctorsCubit>(
        create: (context) {
          final cubit = FindDoctorsCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<FindDoctorsCubit, FindDoctorsState>(
          listener: (context, homeState) {
            if (homeState is Failure) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(homeState.error),
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
                              FindDoctorAppBar(
                                backOnClick: () {
                                  Get.back();
                                },
                              ),
                               FindDoctorTextField(
                                 controller: doctorTextFieldController,
                                 closeOnClick: () {

                                 },
                                 magnifierOnClick: () {

                                 },
                               ),
                              Expanded(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    FoundDoctorsList(doctorsList: state.dto.doctorsList)
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

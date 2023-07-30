import 'package:doctor_hunt/business_logic/find_doctors/find_doctors_cubit.dart';
import 'package:doctor_hunt/presentation/components/find_doctors_page/found_doctors_list.dart';
import 'package:doctor_hunt/presentation/components/stack_with_blurs.dart';
import 'package:doctor_hunt/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../business_logic/find_doctors/find_doctors_state.dart';
import '../components/app_bar_with_back_and_magnifier.dart';
import '../components/search_text_field.dart';
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
              return StackWithBlurs(
                  showBlueBlur: true,
                  showGreenBlur: true,
                  pageContent: Column(
                    children: [
                      AppBarWithBackAndMagnifier(
                        backOnClick: () {
                          Get.back();
                        },
                        title: 'Find Trusted Doctors',
                        showMagnifier: false,
                      ),
                      SearchTextField(
                        controller: doctorTextFieldController,
                        closeOnClick: () {
                          doctorTextFieldController.text="";
                        },
                        magnifierOnClick: () {
                          context.read<FindDoctorsCubit>().searchDoctor(doctorTextFieldController.text);
                        },
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            FoundDoctorsList(
                              doctorsList: state.dto.searchedDoctorsList,
                              itemBookButtonOnClick: (int index) {
                                Get.toNamed(Routes.selectTimePage,arguments: state.dto.searchedDoctorsList[index].id);
                              },
                            )
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

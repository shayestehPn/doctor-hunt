import 'package:doctor_hunt/presentation/components/favorite_doctors/favorite_doctors_list.dart';
import 'package:doctor_hunt/presentation/components/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/favorite_doctors/favorite_doctors_cubit.dart';
import '../../business_logic/favorite_doctors/favorite_doctors_state.dart';
import '../components/app_bar_with_back_and_magnifier.dart';
import '../components/home_screen/doctor_title.dart';
import '../components/home_screen/featured_doctors_list.dart';
import '../components/loading_dilaog.dart';
import '../components/stack_with_blurs.dart';


class FavoriteDoctorsPage extends StatelessWidget {

   FavoriteDoctorsPage({super.key});

  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FavoriteDoctorsCubit>(
        create: (context) {
          final cubit = FavoriteDoctorsCubit();
          cubit.getData();
          return cubit;
        },
        child: BlocConsumer<FavoriteDoctorsCubit, FavoriteDoctorsState>(
          listener: (context, state) {
            if (state is Failure) {
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
                  pageContent:  Stack(
                    children: [
                      Column(
                        children: [
                          AppBarWithBackAndMagnifier(
                            backOnClick: () {
                              Get.back();
                            },
                            title: 'Favorite Doctors',
                            showMagnifier: false,
                          ),
                          SearchTextField(
                              controller: controller,
                              closeOnClick: (){
                                controller.text="";
                              },
                              magnifierOnClick: (){
                                context.read<FavoriteDoctorsCubit>().searchDoctor(controller.text.toString());
                              }
                          ),
                          Expanded(
                              child: ListView(
                                padding: const EdgeInsets.all(0),
                                children: [
                                  FavoriteDoctorsList(
                                      doctorsList: state.dto.searchedDoctorsList.isNotEmpty?
                                      state.dto.searchedDoctorsList: state.dto.allDoctorsList
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 31.h),
                                      child: DoctorTitle(
                                        title: "Feature Doctor",
                                        seeMoreOnClick: () {

                                        },
                                      )
                                  ),
                                  FeaturedDoctorsList(
                                      featuredDoctorsList: state.dto.featuredDoctorsList,
                                    itemOnClick: (int index) {
                                        context.read<FavoriteDoctorsCubit>().likeFeaturedDoctor(index);
                                    },
                                  ),
                                  SizedBox(height: 100.h)
                                ],
                              )
                          )
                        ],
                      ),
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

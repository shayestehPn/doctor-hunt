import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../business_logic/select_time/select_time_cubit.dart';
import '../../business_logic/select_time/select_time_state.dart';
import '../components/app_bar_with_back_and_magnifier.dart';
import '../components/images/png_images.dart';
import '../components/loading_dilaog.dart';


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
                                 magnifierOnClick: () {},
                               ),
                              Expanded(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [

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

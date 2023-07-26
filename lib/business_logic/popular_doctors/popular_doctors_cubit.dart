import 'package:doctor_hunt/business_logic/popular_doctors/popular_doctors_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../data/repository/popular_doctors_repository.dart';

class PopularDoctorsCubit extends Cubit<PopularDoctorsState>{

  final PopularDoctorsRepository myRepository=Get.find();

  PopularDoctorsCubit() : super(const Initial());



  getData() async {

    emit( Loading() );

    final result = await myRepository.getData();

    if(result.error==""){

      emit( Success(dto: result));

    }
    else{

      emit(Failure(error: result.error.toString()));

    }

  }


}
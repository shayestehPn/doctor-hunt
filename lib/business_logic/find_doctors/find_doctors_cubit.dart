import 'package:doctor_hunt/data/dto/find_doctors_dto.dart';
import 'package:doctor_hunt/data/model/doctor_model_for_find_doctors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../data/repository/find_doctors_repository.dart';
import 'find_doctors_state.dart';


class FindDoctorsCubit extends Cubit<FindDoctorsState>{

  final FindDoctorsRepository _findDoctorsRepository=Get.find();

  FindDoctorsCubit() : super(const Initial());



  getData() async {

    emit( Loading() );

    final result = await _findDoctorsRepository.getData();

    if(result.error==""){

      emit( Success(dto: result));

    }
    else{

      emit(Failure(error: result.error.toString()));

    }

  }

  void searchDoctor(String searchedText){
    List<DoctorModelForFindDoctors> doctorList=[];
    for(var element in (state as Success).dto.doctorsList){
      if(element.name.contains(searchedText)||element.medicalCategory.contains(searchedText)){
        doctorList.add(element);
      }
    }
    emit(Success(dto:( state as Success).dto.copyWith(searchedDoctorsList: doctorList )));

  }


}
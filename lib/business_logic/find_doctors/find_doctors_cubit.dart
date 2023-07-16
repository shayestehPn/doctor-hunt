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


}
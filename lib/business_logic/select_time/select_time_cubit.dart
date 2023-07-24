import 'package:doctor_hunt/business_logic/select_time/select_time_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../data/repository/select_time_repositoy.dart';

class SelectTimeCubit extends Cubit<SelectTimeState>{

  final SelectTimeRepository _findDoctorsRepository=Get.find();

  SelectTimeCubit() : super(const Initial());



  getData() async {

    emit( Loading() );

    final result = await _findDoctorsRepository.getData();

    if(result.error==""){

      emit( Success(dto: result,selectedDateIndex: -1));

    }
    else{

      emit(Failure(error: result.error.toString()));

    }

  }

  void selectDate(int index){
    emit((state as Success).copyWith(selectedDateIndex: index));
    print("000000000000000");
  }


}
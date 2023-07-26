import 'package:doctor_hunt/business_logic/select_time/select_time_state.dart';
import 'package:doctor_hunt/data/model/date_model.dart';
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

      emit( Success(dto: result,selectedDateIndex: 0,selectedTimeSlotIndex: 0));

    }
    else{

      emit(Failure(error: result.error.toString()));

    }

  }

  void selectDate(int index){
    emit((state as Success).copyWith(selectedDateIndex: index,selectedTimeSlotIndex: 0));
  }

  void selectTimeSlot(int index){
    emit((state as Success).copyWith(selectedTimeSlotIndex: index));
  }

  Future<void> findNextAvailableDate(int startIndex) async {
    DateModel dateModel=DateModel(id: "", year: "", month: "", day: "");
    for(int i=startIndex;i<(state as Success).dto.availableDatesList.length;i++){
      if((state as Success).dto.availableDatesList[i].timeSlotsList.isNotEmpty){
        dateModel.month=(state as Success).dto.availableDatesList[i].date.month;
        dateModel.day=(state as Success).dto.availableDatesList[i].date.day;
      }
    }
    emit((state as Success).copyWith(dto: (state as Success).dto.copyWith(nextAvailabilityDate: dateModel)));
  }




}
import '../../constants/strings.dart';
import '../model/date_for_booking.dart';
import '../model/doctor_model_for_select_time.dart';

class SelectTimeDto{

  String error="";
  DoctorModelForSelectTime doctorModel=DoctorModelForSelectTime(
      name: '',
      officeAddress: '',
      imageUrl: '',
      score: 0.0,
      isLikedByUser: false
  );
  List<DateForBooking> availableDatesList=[];



  SelectTimeDto({required this.doctorModel,required this.availableDatesList});

  SelectTimeDto copyWith({
    DoctorModelForSelectTime? doctorModel,
    List<DateForBooking>? availableDatesList,
    int? selectedDateIndex
  }) {
    return SelectTimeDto(
      doctorModel: doctorModel??this.doctorModel,
      availableDatesList: availableDatesList??this.availableDatesList,
    );
  }


  SelectTimeDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  SelectTimeDto.error(this.error);



// factory SelectTimeDto.fromJson(Map<dynamic, dynamic> json) {
//
//   return SelectTimeDto();
// }


}
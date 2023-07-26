import 'package:doctor_hunt/data/model/date_model.dart';
import '../../constants/strings.dart';
import '../model/date_model_for_booking.dart';
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
  List<DateModelForBooking> availableDatesList=[];
  DateModel nextAvailabilityDate=DateModel(id: '', year: '', month: '', day: '');
  String clinicPhoneNumber="";



  SelectTimeDto({required this.doctorModel,required this.availableDatesList,required this.nextAvailabilityDate,required this.clinicPhoneNumber});

  SelectTimeDto copyWith({
    DoctorModelForSelectTime? doctorModel,
    List<DateModelForBooking>? availableDatesList,
    DateModel? nextAvailabilityDate,
    String? clinicPhoneNumber
  }) {
    return SelectTimeDto(
      doctorModel: doctorModel??this.doctorModel,
      availableDatesList: availableDatesList??this.availableDatesList,
        nextAvailabilityDate: nextAvailabilityDate??this.nextAvailabilityDate,
        clinicPhoneNumber: clinicPhoneNumber??this.clinicPhoneNumber

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
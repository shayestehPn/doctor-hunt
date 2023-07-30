import 'package:doctor_hunt/data/model/date_model.dart';
import '../../constants/strings.dart';
import '../model/date_model_for_booking.dart';
import '../model/doctor_model.dart';


class SelectTimeDto{

  String error="";
  DoctorModel doctorModel=DoctorModel.selectTime(
      name: '',
      officeAddress: '',
      imageUrl: '',
      score: 0.0,
      isLikedByUser: false,
      id: '0'
  );
  List<DateModelForBooking> availableDatesList=[];
  DateModel nextAvailabilityDate=DateModel(id: '', year: '', month: '', day: '');
  int nextAvailabilityDateIndex=-1;
  String clinicPhoneNumber="";



  SelectTimeDto({required this.doctorModel,required this.availableDatesList,required this.nextAvailabilityDate,required this.clinicPhoneNumber,required this.nextAvailabilityDateIndex});

  SelectTimeDto copyWith({
    DoctorModel? doctorModel,
    List<DateModelForBooking>? availableDatesList,
    DateModel? nextAvailabilityDate,
    String? clinicPhoneNumber,
    int? nextAvailabilityDateIndex
  }) {
    return SelectTimeDto(
      doctorModel: doctorModel??this.doctorModel,
      availableDatesList: availableDatesList??this.availableDatesList,
        nextAvailabilityDate: nextAvailabilityDate??this.nextAvailabilityDate,
        clinicPhoneNumber: clinicPhoneNumber??this.clinicPhoneNumber,
        nextAvailabilityDateIndex: nextAvailabilityDateIndex??this.nextAvailabilityDateIndex

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
import '../../constants/strings.dart';
import '../model/doctor_model.dart';

class FindDoctorsDto{

  String error="";
  List<DoctorModel> doctorsList=[];
  List<DoctorModel> searchedDoctorsList=[];


  FindDoctorsDto({required this.doctorsList,required this.searchedDoctorsList});

  FindDoctorsDto copyWith({
    List<DoctorModel>? doctorsList,
    List<DoctorModel>? searchedDoctorsList,
  }) {
    return FindDoctorsDto(
      doctorsList: doctorsList??this.doctorsList,
      searchedDoctorsList: searchedDoctorsList??this.searchedDoctorsList,
    );
  }


  FindDoctorsDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  FindDoctorsDto.error(this.error);



// factory FindDoctorsDto.fromJson(Map<dynamic, dynamic> json) {
//
//   return FindDoctorsDto();
// }


}
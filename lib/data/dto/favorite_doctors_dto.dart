
import '../../constants/strings.dart';
import '../model/doctor_model.dart';


class FavoriteDoctorsDto{

  String error="";
  List<DoctorModel> allDoctorsList=[];
  List<DoctorModel> searchedDoctorsList=[];
  List<DoctorModel> featuredDoctorsList=[];


  FavoriteDoctorsDto({required this.allDoctorsList,required this.searchedDoctorsList,required this.featuredDoctorsList});

  FavoriteDoctorsDto copyWith({
    List<DoctorModel>? allDoctorsList,
    List<DoctorModel>? searchedDoctorsList,
    List<DoctorModel>? featuredDoctorsList
  }) {
    return FavoriteDoctorsDto(
      allDoctorsList: allDoctorsList??this.allDoctorsList,
      searchedDoctorsList: searchedDoctorsList??this.searchedDoctorsList,
      featuredDoctorsList: featuredDoctorsList??this.featuredDoctorsList
    );
  }


  FavoriteDoctorsDto.status(int status){
    if(status==401){
      error=AppStrings.userNotFoundError;
    }
    else if(status==403 || status==404){
      error=AppStrings.serverError;
    }
  }


  FavoriteDoctorsDto.error(this.error);



// factory FavoriteDoctorsDto.fromJson(Map<dynamic, dynamic> json) {
//
//   return FavoriteDoctorsDto();
// }


}
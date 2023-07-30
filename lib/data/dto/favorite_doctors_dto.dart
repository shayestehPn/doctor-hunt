import 'package:doctor_hunt/data/model/doctor_favorite_model.dart';
import '../../constants/strings.dart';
import '../model/doctor_featured_model.dart';


class FavoriteDoctorsDto{

  String error="";
  List<DoctorFavoriteModel> allDoctorsList=[];
  List<DoctorFavoriteModel> searchedDoctorsList=[];
  List<DoctorFeaturedModel> featuredDoctorsList=[];


  FavoriteDoctorsDto({required this.allDoctorsList,required this.searchedDoctorsList,required this.featuredDoctorsList});

  FavoriteDoctorsDto copyWith({
    List<DoctorFavoriteModel>? allDoctorsList,
    List<DoctorFavoriteModel>? searchedDoctorsList,
    List<DoctorFeaturedModel>? featuredDoctorsList
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
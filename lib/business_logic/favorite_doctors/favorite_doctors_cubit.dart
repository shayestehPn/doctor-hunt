
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../data/model/doctor_model.dart';
import '../../data/repository/favorite_doctors_repository.dart';
import 'favorite_doctors_state.dart';


class FavoriteDoctorsCubit extends Cubit<FavoriteDoctorsState>{

  final FavoriteDoctorsRepository myRepository=Get.find();

  FavoriteDoctorsCubit() : super(const Initial());


  getData() async {
    emit( const Loading() );
    final result = await myRepository.getData();
    if(result.error==""){
      emit( Success(dto: result));
    }
    else{
      emit(Failure(error: result.error.toString()));
    }
  }


  void searchDoctor(String searchedText){
    List<DoctorModel> doctorList=[];
    for(var element in (state as Success).dto.allDoctorsList){
      if(element.name.contains(searchedText)||element.medicalCategory.contains(searchedText)){
        doctorList.add(element);
      }
    }
    emit(Success(dto:( state as Success).dto.copyWith(searchedDoctorsList: doctorList )));
  }


  void likeFeaturedDoctor(int index){
    List<DoctorModel> featuredDoctorsList=(state as Success).dto.featuredDoctorsList;
    List<DoctorModel> favoriteDoctorsList=(state as Success).dto.allDoctorsList;

    if(!featuredDoctorsList[index].isLikedByUser){
      favoriteDoctorsList=addLikedDoctorToFavoriteDoctorsList(favoriteDoctorsList,featuredDoctorsList[index]);
    }

    if(featuredDoctorsList[index].isLikedByUser){
      favoriteDoctorsList=removeDoctorFromFavoriteDoctorsList(favoriteDoctorsList,featuredDoctorsList[index]);
    }

    featuredDoctorsList= toggleFeaturedDoctorLike(featuredDoctorsList, index);

    emit(Success(dto:( state as Success).dto.copyWith(featuredDoctorsList: featuredDoctorsList,allDoctorsList: favoriteDoctorsList )));
  }


  List<DoctorModel> toggleFeaturedDoctorLike(List<DoctorModel> featuredDoctorsList,int index){
    featuredDoctorsList[index].isLikedByUser=!featuredDoctorsList[index].isLikedByUser;
    return featuredDoctorsList;
  }

  List<DoctorModel> addLikedDoctorToFavoriteDoctorsList(List<DoctorModel> favoriteDoctorsList,DoctorModel doctorModel){
    if(!favoriteDoctorsList.contains(doctorModel)){
      favoriteDoctorsList.add(doctorModel);
    }
    return favoriteDoctorsList;
  }


  List<DoctorModel> removeDoctorFromFavoriteDoctorsList(List<DoctorModel> favoriteDoctorsList,DoctorModel doctorModel){
    if(favoriteDoctorsList.contains(doctorModel)){
      favoriteDoctorsList.remove(doctorModel);
    }
    return favoriteDoctorsList;
  }







}
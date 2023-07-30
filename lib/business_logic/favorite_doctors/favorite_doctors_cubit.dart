import 'package:doctor_hunt/data/model/doctor_featured_model.dart';
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



  void toggleFeaturedDoctorLike(int index){
    List<DoctorFeaturedModel> featuredDoctorsList=(state as Success).dto.featuredDoctorsList;
    featuredDoctorsList[index].isLikedByUser=!featuredDoctorsList[index].isLikedByUser;
    emit(Success(dto:( state as Success).dto.copyWith(featuredDoctorsList: featuredDoctorsList )));
  }


}
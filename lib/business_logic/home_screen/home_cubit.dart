import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../data/repository/home_repository.dart';
import 'home_state.dart';


class HomeCubit extends Cubit<HomeState>{

  final HomeRepository myRepository=Get.find();

  HomeCubit() : super(const Initial());



  getData() async {

    emit( Loading() );

    final result = await myRepository.getData();

    if(result.error==""){

      emit( Success(dto: result));

    }
    else{

      emit(Failure(error: result.error.toString()));

    }

  }


}
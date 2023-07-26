import 'package:doctor_hunt/data/dto/popular_doctors_dto.dart';
import 'package:equatable/equatable.dart';

abstract class PopularDoctorsState extends Equatable{    //we cant make instance of abstract class

  const PopularDoctorsState();
}

class Initial extends PopularDoctorsState {

  const Initial();

  @override
  List<Object?> get props => [];

}


class Loading extends PopularDoctorsState {

  Loading();

  @override
  List<Object?> get props => [];

}




class Success extends PopularDoctorsState {

  PopularDoctorsDto dto;

  Success({required this.dto});

  @override
  List<Object?> get props => [dto];

  Success copyWith({
    PopularDoctorsDto? dto
  }) {
    return Success(
      dto: dto??this.dto,
    );
  }
}




class Failure extends PopularDoctorsState {

  String error="";

  Failure({required this.error});

  @override
  List<Object?> get props => [error];

}

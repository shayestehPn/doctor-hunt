import 'package:equatable/equatable.dart';
import '../../data/dto/find_doctors_dto.dart';

abstract class FindDoctorsState extends Equatable{    //we cant make instance of abstract class

  const FindDoctorsState();
}

class Initial extends FindDoctorsState {

  const Initial();

  @override
  List<Object?> get props => [];

}


class Loading extends FindDoctorsState {

  const Loading();

  @override
  List<Object?> get props => [];

}




class Success extends FindDoctorsState {

  FindDoctorsDto dto;

  Success({required this.dto});

  @override
  List<Object?> get props => [dto];

  Success copyWith({
    FindDoctorsDto? dto
  }) {
    return Success(
      dto: dto??this.dto,
    );
  }
}




class Failure extends FindDoctorsState {

  String error="";

  Failure({required this.error});

  @override
  List<Object?> get props => [error];

}
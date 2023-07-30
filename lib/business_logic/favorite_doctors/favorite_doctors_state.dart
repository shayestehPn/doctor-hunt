import 'package:equatable/equatable.dart';
import '../../data/dto/favorite_doctors_dto.dart';


abstract class FavoriteDoctorsState extends Equatable{    //we cant make instance of abstract class

  const FavoriteDoctorsState();
}

class Initial extends FavoriteDoctorsState {

  const Initial();

  @override
  List<Object?> get props => [];

}


class Loading extends FavoriteDoctorsState {

  const Loading();

  @override
  List<Object?> get props => [];

}




class Success extends FavoriteDoctorsState {

  FavoriteDoctorsDto dto;

  Success({required this.dto});

  @override
  List<Object?> get props => [dto];

  Success copyWith({
    FavoriteDoctorsDto? dto
  }) {
    return Success(
      dto: dto??this.dto,
    );
  }
}




class Failure extends FavoriteDoctorsState {

  String error="";

  Failure({required this.error});

  @override
  List<Object?> get props => [error];

}
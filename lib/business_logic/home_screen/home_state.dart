import 'package:equatable/equatable.dart';
import '../../data/dto/home_dto.dart';

abstract class HomeState extends Equatable{    //we cant make instance of abstract class

  const HomeState();
}

class Initial extends HomeState {

  const Initial();

  @override
  List<Object?> get props => [];

}


class Loading extends HomeState {

   Loading();

  @override
  List<Object?> get props => [];

}




class Success extends HomeState {

  HomeDto dto;

  Success({required this.dto});

  @override
  List<Object?> get props => [dto];

  Success copyWith({
    HomeDto? dto
  }) {
    return Success(
      dto: dto??this.dto,
    );
  }
}




class Failure extends HomeState {

  String error="";

  Failure({required this.error});

  @override
  List<Object?> get props => [error];

}

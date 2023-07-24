import 'package:equatable/equatable.dart';

import '../../data/dto/select_time_dto.dart';

abstract class SelectTimeState extends Equatable{    //we cant make instance of abstract class

  const SelectTimeState();
}

class Initial extends SelectTimeState {

  const Initial();

  @override
  List<Object?> get props => [];

}


class Loading extends SelectTimeState {

  Loading();

  @override
  List<Object?> get props => [];

}




class Success extends SelectTimeState {

  SelectTimeDto dto;
  int selectedDateIndex;

  Success({required this.dto,required this.selectedDateIndex});

  @override
  List<Object?> get props => [dto];

  Success copyWith({
    SelectTimeDto? dto,
    int? selectedDateIndex
  }) {
    return Success(
      dto: dto??this.dto,
      selectedDateIndex: selectedDateIndex??this.selectedDateIndex
    );
  }
}




class Failure extends SelectTimeState {

  String error="";

  Failure({required this.error});

  @override
  List<Object?> get props => [error];

}
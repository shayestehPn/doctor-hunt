
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_page_state.dart';


class MainPageCubit extends Cubit<MainPageState> {

  MainPageCubit() : super( MainPageState(currentPageValue: 0));

  void setCurrentPageNumber(int value){

    emit(state.copyWith(currentPageValue: value));

  }


}

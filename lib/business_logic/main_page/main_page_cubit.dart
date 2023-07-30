
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_page_state.dart';


class MainPageCubit extends Cubit<MainPageState> {

  MainPageCubit() : super( MainPageState(currentPageIndex: 0));

  void setCurrentPageNumber(int value){

    emit(state.copyWith(currentPageIndex: value));

  }


}

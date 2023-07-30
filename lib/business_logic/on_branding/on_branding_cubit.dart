import 'package:flutter_bloc/flutter_bloc.dart';
import 'on_branding_state.dart';

class OnBrandingCubit extends Cubit<OnBrandingState> {

  OnBrandingCubit() : super( OnBrandingState(currentPageIndex: 0));

  void increasePageNumber(){

    emit(state.copyWith(currentPageIndex: state.currentPageIndex+1));

  }


}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'on_branding_state.dart';

class OnBrandingCubit extends Cubit<OnBrandingState> {

  OnBrandingCubit() : super( OnBrandingState(currentPageValue: 0));

  void increasePageNumber(){

    emit(state.copyWith(currentPageValue: state.currentPageValue+1));

  }


}
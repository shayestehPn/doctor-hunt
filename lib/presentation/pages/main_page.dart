import 'package:doctor_hunt/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/main_page/main_page_cubit.dart';
import '../../business_logic/main_page/main_page_state.dart';
import '../components/main_page/main_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {

  MainPage({Key? key}) : super(key: key);

  PageController controller = PageController( keepPage: true);

  List pageViewItems = [
    const HomeScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageCubit>(
      create: (context) {
        final cubit = MainPageCubit();
        cubit.setCurrentPageNumber(0);
        return cubit;
      },
      child: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body:  Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                PageView.builder(
                    itemCount: pageViewItems.length,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),

                    controller: controller,
                    itemBuilder: (context, position) {
                      return pageViewItems[position];
                    }
                ),
                MainBottomNavigationBar(
                  currentPageValue: state.currentPageValue,
                  selectPage: (int pageValue) {
                    context.read<MainPageCubit>().setCurrentPageNumber(pageValue);
                    // controller.animateToPage(
                    //     pageViewItems[pageValue],
                    //     duration: const Duration(microseconds: 200),
                    //     curve: Curves.linear
                    // );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}

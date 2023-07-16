import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {

  MainPage({Key? key}) : super(key: key);

  PageController controller = PageController( keepPage: true);

  List pageViewItems = [];


  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageCubit>(
      create: (context) {
        final cubit = MainPageCubit();
        cubit.increasePageNumber();
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

}

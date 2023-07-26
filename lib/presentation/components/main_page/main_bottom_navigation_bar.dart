import 'package:doctor_hunt/presentation/components/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/styles.dart';
import 'navigation_bar_item.dart';

class MainBottomNavigationBar extends StatelessWidget {

  final int currentPageValue;
  final Function(int pageValue) selectPage;

  const MainBottomNavigationBar({
    super.key,
    required this.currentPageValue,
    required this.selectPage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppStyles.bottomNavigationBarBorderRadius,
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 44.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBarItem(
              currentPageValue: currentPageValue,
              pageValueToCompareWith: 0,
              activeIcon: SvgImage.homeWhiteSvg,
              notActiveIcon: SvgImage.homeGraySvg,
              onClick: (){
                selectPage(0);
              },
            ),
            NavigationBarItem(
                currentPageValue: currentPageValue,
                pageValueToCompareWith: 1,
                activeIcon: SvgImage.heartWhiteSvg,
                notActiveIcon: SvgImage.heartGraySvg,
              onClick: (){
                  selectPage(1);
              },
            ),
            NavigationBarItem(
                currentPageValue: currentPageValue,
                pageValueToCompareWith: 2,
                activeIcon: SvgImage.bookWhiteSvg,
                notActiveIcon: SvgImage.bookGraySvg,
              onClick: (){
                  selectPage(2);
              },
            ),
            NavigationBarItem(
                currentPageValue: currentPageValue,
                pageValueToCompareWith: 3,
                activeIcon: SvgImage.messageWhiteSvg,
                notActiveIcon: SvgImage.messageGraySvg,
              onClick: (){
                  selectPage(3);
              },
            )
          ],
        ),
      ),
    );
  }
}

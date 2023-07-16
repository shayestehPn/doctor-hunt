import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';


class NavigationBarItem extends StatelessWidget {

  final int currentPageValue;
  final int pageValueToCompareWith;
  final Widget activeIcon;
  final Widget notActiveIcon;
  final Function() onClick;

  const NavigationBarItem({
    super.key,
    required this.currentPageValue,
    required this.pageValueToCompareWith,
    required this.activeIcon,
    required this.notActiveIcon,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: 48.w,
        width: 48.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: currentPageValue==pageValueToCompareWith?AppColors.green:Colors.white,
            borderRadius: BorderRadius.circular(100)
        ),
        child: currentPageValue==pageValueToCompareWith? activeIcon:notActiveIcon,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/styles.dart';


class CustomBorderedButton extends StatelessWidget {

  final double height;
  final double width;
  final Function() onClick;
  final Color borderColor;
  final Color textColor;
  final String title;

  const CustomBorderedButton({
    super.key,
    required this.height,
    required this.width,
    required this.borderColor,
    required this.textColor,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: borderColor,
                width:1.w),
            borderRadius: AppStyles.cardBorderRadius
        ),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: AppStyles.mediumFont,
              color: textColor
          ),
        ),
      ),
    );
  }
}

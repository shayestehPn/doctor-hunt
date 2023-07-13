import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class CustomSolidGreenButton extends StatelessWidget {

  final double height;
  final double width;
  final String text;
  final Function() onClick;

  const CustomSolidGreenButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.onClick
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
          color: AppColors.green,
          borderRadius: AppStyles.cardBorderRadius
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp
          ),
        ),
      ),
    );
  }
}

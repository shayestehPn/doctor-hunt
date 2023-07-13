import 'package:doctor_hunt/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTransparentButton extends StatelessWidget {

  final double height;
  final double width;
  final Function() onClick;
  final String text;

  const CustomTransparentButton({
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
        alignment: Alignment.center,
        height: height,
        width: width,
        child: Text(
          text,
          style: TextStyle(
              color: AppColors.gray,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp
          ),
        ),
      ),
    );
  }
}
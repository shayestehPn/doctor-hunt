import 'package:flutter/material.dart';

class ButtonWithTouchPoint extends StatelessWidget {

  final Widget buttonWidget;
  final  double touchingAreaHeight;
  final double touchingAreaWidth;
  final Function() onClick;

  const ButtonWithTouchPoint({
    super.key,
    required this.buttonWidget,
    required this.touchingAreaHeight,
    required this.touchingAreaWidth,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          buttonWidget,
          Container(
            height: touchingAreaHeight,
            width: touchingAreaWidth,
            color: Colors.transparent,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_screen/star_card.dart';


class FiveStars extends StatelessWidget {

  final double score;

  const FiveStars({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        StarCard(
            isYellow: score.toInt()>=1?true:false
        ),
        StarCard(
            isYellow: score.toInt()>=2?true:false
        ),
        StarCard(
            isYellow: score.toInt()>=3?true:false
        ),
        StarCard(
            isYellow: score.toInt()>=4?true:false
        ),
        StarCard(
            isYellow: score.toInt()>=5?true:false
        )
      ],
    );
  }
}

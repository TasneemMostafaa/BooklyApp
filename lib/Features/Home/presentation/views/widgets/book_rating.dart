import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F),size: 16,),
        const SizedBox(width: 6.3,),
        const Text('4.8' , style: Styles.titleStyle16),
        const SizedBox(width: 5,),
        Text('(2450)', style: Styles.titleStyle14.copyWith(color: const Color(0xff707070)),)
      ],
    );
  }
}
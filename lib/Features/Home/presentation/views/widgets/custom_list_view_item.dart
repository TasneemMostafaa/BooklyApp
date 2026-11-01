import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 1/2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(AssetsData.test),
            fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}
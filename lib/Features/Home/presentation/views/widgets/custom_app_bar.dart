import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, top: 32),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height:50, width: 100,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 28,))
        ],
      ),
    );
  }
}
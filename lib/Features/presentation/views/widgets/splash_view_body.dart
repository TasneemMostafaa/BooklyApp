import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatToHome();
  }

  

 

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset(AssetsData.logo),
      SlidingText(slidingAnimation: slidingAnimation)
    ],);
  }


   void initSlidingAnimation() {
    animationController = AnimationController(vsync:this, duration: const Duration(seconds: 1) );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 4) , end:Offset(0, 0)).animate(animationController);
    animationController.forward();
  }

  void navigatToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=> const HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }

}


import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter{

  static const kHomeView = '/homeView';
  static final router= GoRouter(
    routes: [
      GoRoute(
      path: '/',
      builder: (context, state)=> const SplashView(),),

      GoRoute(path: kHomeView,
      builder:(context, state) => const HomeView(),)
    ]
  );
}
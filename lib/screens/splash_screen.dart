import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/layouts/home_layout.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: Duration.millisecondsPerSecond,
      pageTransitionType: PageTransitionType.leftToRight,
      backgroundColor: Colors.white,
      splashIconSize: 805,
      splash: Image(image: AssetImage('assets/images/splash.png')),
      nextScreen: HomeLayout(),
    );
  }
}

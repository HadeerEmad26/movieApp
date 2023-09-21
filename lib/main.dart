import 'package:flutter/material.dart';
import 'package:movie_app/layouts/home_layout.dart';
import 'package:movie_app/screens/splash_screen.dart';
import 'package:movie_app/shared/styles/theming/my_them.dart';
import 'package:movie_app/tabs/watchList_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        WatchListTab.routeName:(context)=>WatchListTab()
      },
      theme: MyThemeData.darkTheme,
    );
  }
}

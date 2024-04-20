// import 'package:groceriesapp/home.dart';
// import 'package:groceriesapp/nav_bar.dart';
// import 'package:groceriesapp/onboarding_screen.dart';
// import 'package:groceriesapp/splash_screen.dart';
// import 'package:groceriesapp/boarding_screen.dart';
import 'package:groceriesapp/product_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,

    home: splashScreen(),

    // home: boardingScreen(),
    //home: AnimatedSplashScreen(),
    // home: OnboardingScreen(),
    //  theme: ThemeData(
    //   primarySwatch: Colors.green,
  ));
}

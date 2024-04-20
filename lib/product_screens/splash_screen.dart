import 'package:flutter/material.dart';
import 'package:groceriesapp/boarding_screen.dart';
// import 'package:groceriesapp/onboarding_screen.dart';
// import 'package:groceriesapp/splash_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => boardingScreen()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff53B175),
      width: 414,
      height: 896,
      child: Image.asset("assets/images/Group 1.png"),
    );
  }
}

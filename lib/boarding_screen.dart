import 'package:flutter/material.dart';
import 'package:groceriesapp/nav_bar.dart';

class boardingScreen extends StatefulWidget {
  const boardingScreen({super.key});

  @override
  State<boardingScreen> createState() => _boardingScreenState();
}

class _boardingScreenState extends State<boardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.1,
            child: Container(
              child: Image.asset("assets/images/Start.png"),
            ),
          ),
          Positioned(
            bottom: 130,
            left: 16,
            right: 16,
            child: Container(child: Image.asset("assets/images/careet.png")),
          ),
          Positioned(
              bottom: 170,
              left: 16,
              right: 16,
              child: Container(
                child: Image.asset("assets/images/welcome.png"),
              )),
          Positioned(
              bottom: 150,
              left: 16,
              right: 16,
              child: Container(
                child: Image.asset("assets/images/choice.png"),
              )),
          Positioned(
            bottom: 60,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyNavigationBar()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff53B175), // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
              ),
              child: Container(
                width: double.infinity, // Full width
                padding:
                    const EdgeInsets.symmetric(vertical: 12), // Button padding
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20),
                )), // Button text
              ),
            ),
          ),
        ],
      ),
    );

    // Container(
    //   child: Image.asset("assets/images/start.jpg"),
    // );
  }
}

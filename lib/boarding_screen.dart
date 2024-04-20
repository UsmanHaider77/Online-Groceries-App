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
          Container(
            child: Image.asset("assets/images/start.jpg"),
          ),
          Positioned(
            bottom: 50,
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

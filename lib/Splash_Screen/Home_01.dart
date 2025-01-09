import 'package:batch2ui/Splash_Screen/Home_02.dart';
import 'package:flutter/material.dart';

class Home01 extends StatelessWidget {
  const Home01({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home02()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "English Talk",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(color: Colors.red),
          ],
        ),
      ),
    );
  }
}

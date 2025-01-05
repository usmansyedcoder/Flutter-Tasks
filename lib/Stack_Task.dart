import 'package:flutter/material.dart';

class StackTask extends StatefulWidget {
  const StackTask({super.key});

  @override
  State<StackTask> createState() => _StackTaskState();
}

class _StackTaskState extends State<StackTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Using Stack'),
      ),
      body: Stack(
        children: [
          // Blue background container
          Center(
            child: Container(
              height: 600,
              width: 300,
              color: Colors.blue,
            ),
          ),
          // Yellow container
          Center(
            child: Container(
              height: 550,
              width: 250,
              color: const Color.fromARGB(255, 228, 241, 111),
            ),
          ),
          // First circular image (logo)

          // Second circular image (profile picture)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 150),
            height: 150,
            width: 150,
            child: ClipOval(
              child: Image.asset(
                'assets/profile.png',
                fit: BoxFit.cover, // Ensures the image fits the circle
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 150),
              height: 30,
              width: 200,
              // color: Colors.green,
              child: const Center(
                child: Text(
                  'Muhammad Usman',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110.0),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 170),
              height: 30,
              width: 200,
              // color: Colors.green,
              child: const Center(
                child: Text(
                  'Usmansyedislamian@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

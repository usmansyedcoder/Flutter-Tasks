import 'package:flutter/material.dart';
import 'dart:math';

class FlutterTutorial extends StatefulWidget {
  const FlutterTutorial({super.key});

  @override
  State<FlutterTutorial> createState() => _Task9State();
}

class _Task9State extends State<FlutterTutorial> {
  // List of predefined colors
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
  ];

  // Random number generator
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tutorial'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                // Assign a random color from the list
                final color = _colors[_random.nextInt(_colors.length)];
                return Container(
                  height: 200,
                  width: 200,
                  color: color,
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

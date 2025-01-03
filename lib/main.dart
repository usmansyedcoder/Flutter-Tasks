import 'package:flutter/material.dart';
import 'package:batch2ui/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Task(),
    );
  }
}





///Commands to add github repository from vs code
///git init
///git add .
///git commit -m  "message"
///path
///git push origin main
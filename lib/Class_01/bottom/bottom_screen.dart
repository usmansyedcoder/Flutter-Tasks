import 'package:batch2ui/Class_01/bottom/home_screen.dart';
import 'package:batch2ui/Class_01/bottom/notification.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currenindex = 0;
  List pages = [
    HomeScreen(),
    NotificationScreen(),
    Container(
      color: Colors.teal,
      height: 400,
      width: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'email'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'email'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'settings'),
        ],
        currentIndex: currenindex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.teal,
        onTap: (index) {
          setState(() {
            currenindex = index;
          });
        },
      ),
    );
  }
}

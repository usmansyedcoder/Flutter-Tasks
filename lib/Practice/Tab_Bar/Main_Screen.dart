import 'package:batch2ui/Practice/Tab_Bar/First_Screen.dart';
import 'package:batch2ui/Practice/Tab_Bar/Second_Screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Tab Bar Home Screen'),
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.chat), text: "Chats"),
                Tab(icon: Icon(Icons.tag_faces_rounded), text: "Status"),
              ]),
            ),
            body: const TabBarView(
              children: [
                FirstScreen(),
                SecondScreen(),
                
              ],
            ),
          )),
    );
  }
}

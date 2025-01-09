import 'package:batch2ui/Splash_Screen/Home_03.dart';
import 'package:batch2ui/Splash_Screen/Home_04.dart';
import 'package:batch2ui/Splash_Screen/Home_05.dart';
import 'package:batch2ui/Splash_Screen/Home_06.dart';
import 'package:flutter/material.dart';


class Home02 extends StatelessWidget {
  const Home02({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("English Talk"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Classes"),
              Tab(text: "Notifications"),
              Tab(text: "History"),
              Tab(text: "Profile"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home03(),
            Home04(),
            Home05(),
            Home06(),
          ],
        ),
      ),
    );
  }
}


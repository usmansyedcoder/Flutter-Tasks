import 'package:flutter/material.dart';

class DefalultTabControllers extends StatelessWidget {
  const DefalultTabControllers({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Screen')),
            Center(child: Text('Favorites Screen')),
            Center(child: Text('Settings Screen')),
          ],
        ),
      ),
    );
  }
}

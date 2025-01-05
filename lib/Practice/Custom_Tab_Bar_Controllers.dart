import 'package:flutter/material.dart';

class CustomTabBarControllers extends StatefulWidget {
  const CustomTabBarControllers({super.key});

  @override
  _CustomTabBarControllersSatate createState() =>
      _CustomTabBarControllersSatate();
}

class _CustomTabBarControllersSatate extends State<CustomTabBarControllers>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.star), text: 'Favorites'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Home Screen')),
          Center(child: Text('Favorites Screen')),
          Center(child: Text('Settings Screen')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Change tab programmatically
          _tabController.animateTo(1); // Move to "Favorites"
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

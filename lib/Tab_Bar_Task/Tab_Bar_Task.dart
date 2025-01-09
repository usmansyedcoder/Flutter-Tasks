import 'package:batch2ui/Tab_Bar_Task/History.dart';
import 'package:batch2ui/Tab_Bar_Task/Statistics.dart';
import 'package:flutter/material.dart';

class TabBarTask extends StatefulWidget {
  const TabBarTask({super.key});

  @override
  _TabBarTaskState createState() => _TabBarTaskState();
}

class _TabBarTaskState extends State<TabBarTask>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        backgroundColor: const Color.fromARGB(255, 31, 134, 33),
        foregroundColor: Colors.white,
        title: Text('Weight Tracker'),
        bottom: TabBar(
          indicatorColor: Colors.red,
          labelColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.graphic_eq), text: 'Statistics'),
            Tab(icon: Icon(Icons.history), text: 'History'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Statistics(),
          History(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Change tab programmatically
          _tabController.animateTo(1); // Move to "Favorites"
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}

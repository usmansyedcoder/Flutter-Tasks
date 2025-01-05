import 'package:flutter/material.dart';

class DynamicAddTabs extends StatefulWidget {
  const DynamicAddTabs({super.key});

  @override
  _DynamicAddTabsState createState() => _DynamicAddTabsState();
}

class _DynamicAddTabsState extends State<DynamicAddTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> myTabs = [Tab(text: 'Tab 1')];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  void addNewTab() {
    setState(() {
      myTabs.add(Tab(text: 'Tab ${myTabs.length + 1}'));
      _tabController = TabController(length: myTabs.length, vsync: this);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Tabs'),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs
            .map((tab) => Center(child: Text('${tab.text} Content')))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewTab,
        child: Icon(Icons.add),
      ),
    );
  }
}

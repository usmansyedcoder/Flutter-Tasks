import 'package:flutter/material.dart';

// class Practice extends StatelessWidget {
//   const Practice({super.key});

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//         appBar: AppBar(title: const Text('Stack Example')),
//         body:
//Stack(
//   children: [
//     // Base layer
//     Container(
//       width: 300,
//       height: 300,
//       color: Colors.blue,
//     ),
//     // Overlapping child
//     Container(
//       width: 200,
//       height: 200,
//       color: Colors.red.withOpacity(0.5),
//     ),
//     // Positioned widget
//     Positioned(
//       top: 100,
//       left: 100,
//       child: Container(
//         width: 100,
//         height: 100,
//         color: Colors.green,
//       ),
//     ),
//   ],
// ),
//     Stack(
//   children: [
//     Container(width: 300, height: 300, color: const Color.fromARGB(255, 8, 160, 76)),
//     const Positioned(
//       // bottom: 10,
//       // right: 10,
//       top: 150,
//       left: 150,
//       child: Icon(Icons.star, size: 50, color: Color.fromARGB(255, 255, 0, 0)),
//     ),
//   ],
// ),
//     Stack(
//   fit: StackFit.expand,
//   children: [
//     Container(color: Colors.blue),
//      // Fills the entire stack
//     const Center(
//         child: Text('Hello, World!',
//             style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: 'sacramento'))),
//   ],
// )),

// class Practice extends StatelessWidget {
//   const Practice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4, // Number of tabs
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('TabBar Example'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.home), text: 'Home'),
//               Tab(icon: Icon(Icons.star), text: 'Favorites'),
//               Tab(icon: Icon(Icons.settings), text: 'Settings'),
//               Tab(icon: Icon(Icons.signal_wifi_statusbar_4_bar), text: 'wifi'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(child: Text('Home Page')),
//             Center(child: Text('Favorites Page')),
//             Center(child: Text('Settings Page')),
//             Center(child: Text('Wifi Page')),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        title: const Text('Custom TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.call), text: 'Contacts'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
            
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Home Page')),
          Center(child: Text('Contacts Page')),
          Center(child: Text('Settings Pages')),
        ],
      ),
    );
  }
}

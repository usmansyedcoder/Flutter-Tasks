// import 'package:flutter/material.dart';
// import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: GradientAppBar(
//           title: Text(widget.title),
//           gradient: LinearGradient(colors: [Colors.red, Colors.purple]),
//           bottom: TabBar(tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.home),
//               text: 'Home',
//             ),
//             Tab(
//               icon: Icon(Icons.store),
//               text: 'Store',
//             )
//           ]),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.titleSmall,
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           tooltip: 'Increment',
//           backgroundColor: Colors.red,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
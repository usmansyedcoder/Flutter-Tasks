import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Home Screen'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.person)],
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      color: Colors.white,
                      child: Image.asset('assets/logo2.png'),
                    ),
                  ],
                ),
              ],
            ),
           
          ],
        ));
  }
}

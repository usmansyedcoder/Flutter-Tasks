import 'package:batch2ui/Tutor_Task/Home_Page4.dart';
import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LessonHistoryScreen(),
    );
  }
}

class LessonHistoryScreen extends StatelessWidget {
  const LessonHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson History'),
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Video Call',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Audio Call',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Profile Section
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stephen N',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Video Call - Scheduled',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '11:30 AM',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(Icons.person_add, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  const Text('Follow'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(Icons.message, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  const Text('Message'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:
                        const Icon(Icons.favorite_border, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  const Text('Favorite'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Description
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          // Class Details
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Monday, March 27 2023',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Total Time: 39 Mins',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tuesday, March 28 2023',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Total Time: 39 Mins',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage4()),
              );
            },
            child: Container(
              child: const Text('Page 04'),
            ),
          ),
        ],
      ),
    );
  }
}

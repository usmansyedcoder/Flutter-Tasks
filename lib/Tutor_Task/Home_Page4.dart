import 'package:batch2ui/Tutor_Task/Home_Page1.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Start Your free trial today!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Here are the 5 free minutes.'),
              SizedBox(height: 20),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.grey[300],
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
          Container(
            height: 70,
            width: 300,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(Icons.lock_clock),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    'Get Lesson Time',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 300,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(Icons.lock_clock),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    'Find A Tutor',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 300,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(Icons.timer_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    'Time Remaining',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            width: 300,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(Icons.account_balance),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    'Profile',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 100)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage1()),
                  );
                },
                child: const Text("Go to Page 3"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:batch2ui/Security_Task/Security_Home_page3.dart';
import 'package:flutter/material.dart';

class SecurityHomePage2 extends StatelessWidget {
  const SecurityHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(child: Image.asset("assets/security.png", height: 200)),
          const SizedBox(height: 10),
          const Text("John Robert",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text("4.0 ★",
              style: TextStyle(fontSize: 16, color: Colors.grey)),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.location_on), Text("London, UK")]),
              Column(children: [Icon(Icons.directions_car), Text("15 km")]),
              Column(children: [Icon(Icons.person), Text("5'3\", 64 kg")]),
            ],
          ),
          const SizedBox(height: 20),
          const Text("\$15 / hour",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecurityHomePage3(),
                  ));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 80)),
            child: const Text("Book Now"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 70)),
            child: const Text("Call John Now"),
          ),
        ],
      ),
    );
  }
}

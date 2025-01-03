import 'package:flutter/material.dart';

class SecurityHomePage3 extends StatelessWidget {
  const SecurityHomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Image.asset("assets/security.png", height: 200)),
            const SizedBox(height: 10),
            const Text("John Robert",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("4.0 ★", style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 10),
            const Text("\$15 / hour",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("For how many hours per day do you want to hire John Robert?",
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Slider(
                value: 0,
                min: 0,
                max: 12,
                divisions: 12,
                label: "0 Hours",
                onChanged: (value) {}),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "From", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "To", border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 50)),
              child: const Text("Hire Now for \$0"),
            ),
          ],
        ),
      ),
    );
  }
}

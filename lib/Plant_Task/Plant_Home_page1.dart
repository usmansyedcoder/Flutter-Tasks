import 'package:batch2ui/Plant_Task/Plant_Home_Page2.dart';
import 'package:batch2ui/Plant_Task/Plant_Home_Page3.dart';
import 'package:flutter/material.dart';


class PlantHomePage1 extends StatelessWidget {
  const PlantHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                // decoration: const BoxDecoration(color: Colors.grey),
                child: Center(
                  child: Image.asset('assets/plant2.jpg',
                      ), 
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PlantHomePage2()),
                      );
                    },
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PlantHomePage3()),
                      );
                    },
                    child: const Text("Register"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Continue as a guest"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

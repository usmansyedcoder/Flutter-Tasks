import 'package:flutter/material.dart';
import 'Plant_Home_Page3.dart';

class PlantHomePage2 extends StatelessWidget {
  const PlantHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Welcome back! Glad to see you, Again!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: "Enter your email"),
               
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Enter your password"),
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
              const SizedBox(height: 20),
              const Text("Or Login with", textAlign: TextAlign.center),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 10),
                  Icon(Icons.face),
                  SizedBox(width: 10),
                  Icon(Icons.apple),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PlantHomePage3()),
                  );
                },
                child: const Text("Don't have an account? Register Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

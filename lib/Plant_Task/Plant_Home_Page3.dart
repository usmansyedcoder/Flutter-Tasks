import 'package:flutter/material.dart';

class PlantHomePage3 extends StatelessWidget {
  const PlantHomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Hello! Register to get started",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
              ),
              const SizedBox(height: 20),
              const Text("Or Register with", textAlign: TextAlign.center),
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
                  Navigator.pop(context);
                },
                child: const Text("Already have an account? Login Here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

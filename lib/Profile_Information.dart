import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.jpeg'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Muhammad Usman',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('+923139794347'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Usmansyedislamian@gmail.com'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

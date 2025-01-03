import 'package:flutter/material.dart';

class ProfileTask extends StatelessWidget {
  const ProfileTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Write a Review'),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80.0),
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
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 20,
                ),
                Text('Edit Profile'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.notification_important),
                SizedBox(
                  width: 20,
                ),
                Text('Notifications'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.message),
                SizedBox(
                  width: 20,
                ),
                Text('Messages'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.time_to_leave),
                SizedBox(
                  width: 20,
                ),
                Text('Free Minutes'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: 20,
                ),
                Text('Favourite Tutors'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.schedule),
                SizedBox(
                  width: 20,
                ),
                Text('Schedule Lesson'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.contact_emergency),
                SizedBox(
                  width: 20,
                ),
                Text('Contact'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 20,
                ),
                Text('Logout'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            color: Colors.yellowAccent,
            child: const Center(child: Text('Switch to Tutor')),
          )
        ],
      ),
    );
  }
}

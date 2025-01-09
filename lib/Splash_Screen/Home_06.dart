import 'package:flutter/material.dart';

class Home06 extends StatelessWidget {
  const Home06({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/person.png'),
          ),
          SizedBox(height: 10),
          Text(
            "John Doe",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit Profile"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

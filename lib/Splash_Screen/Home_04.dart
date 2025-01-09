import 'package:flutter/material.dart';

class Home04 extends StatelessWidget {
  const Home04({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.notifications, color: Colors.blue),
          title: Text("Notification ${index + 1}"),
          subtitle: Text("This is the detail of notification."),
        );
      },
    );
  }
}


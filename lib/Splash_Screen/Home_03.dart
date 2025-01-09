import 'package:flutter/material.dart';

class Home03 extends StatelessWidget {
  const Home03({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/person.png'),
                ),
                title: Text("Class ${index + 1}"),
                subtitle: Text("Upcoming Class"),
              );
            },
          ),
        ),
      ],
    );
  }
}

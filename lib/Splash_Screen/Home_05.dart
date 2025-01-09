import 'package:flutter/material.dart';

class Home05 extends StatelessWidget {
  const Home05({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'History ${index + 1}',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
      },
    );
  }
}

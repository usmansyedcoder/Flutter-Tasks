import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 1,
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          color: index.isEven ? Colors.yellow : Colors.green,
          child: Center(
            child: Text(
              '$index',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Sacramento',
              ),
            ),
          ),
        );
      },
    ));
  }
}

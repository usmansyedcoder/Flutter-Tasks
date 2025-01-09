import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '57.0 kg',
              style: TextStyle(
                  fontSize: 30, color: const Color.fromARGB(255, 33, 95, 35)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current weight',
              style: TextStyle(
                  fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
        Divider(
          thickness: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '-3.0 kg',
              style: TextStyle(
                  fontSize: 30, color: const Color.fromARGB(255, 33, 95, 35)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Progress done',
              style: TextStyle(
                  fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
        Divider(
          thickness: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '-3.0 kg',
              style: TextStyle(
                  fontSize: 30, color: const Color.fromARGB(255, 33, 95, 35)),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              '-3.0 kg',
              style: TextStyle(
                  fontSize: 30, color: const Color.fromARGB(255, 33, 95, 35)),
            ),
          ],
        ),
        VerticalDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Last week',
              style: TextStyle(
                  fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              'Last month',
              style: TextStyle(
                  fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ],
    ));
  }
}

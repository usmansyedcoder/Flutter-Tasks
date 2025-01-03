import 'package:flutter/material.dart';

class ZapSurveys extends StatelessWidget {
  const ZapSurveys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zap Surveys'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
            const SizedBox(
              height: 60,
            ),
            Container(
              color: Colors.green,
              width: 320,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    child: const Icon(
                      Icons.check_circle_rounded,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const Text(
                      'Daily Surveys',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.green,
              width: 320,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    child: const Icon(
                      Icons.check_circle_rounded,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const Text(
                      'Zappers Rewards',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.green,
              width: 320,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    child: const Icon(
                      Icons.check_circle_rounded,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const Text(
                      'Refferals',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.green,
              width: 320,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Container(
                    child: const Icon(
                      Icons.check_circle_rounded,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: const Text(
                      'Daily Check-in',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 320,
              height: 50,
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  Container(
                    child: const Text(
                      'These are all ways you can earn in zap\n surveys',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 320,
              height: 50,
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  Container(
                    child: const Text(
                      'Out \b # 1 tip\b for new zappers is to make sure to\natleast complete your daily survey everyday\nto maximize earnings.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

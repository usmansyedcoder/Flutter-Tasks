import 'package:flutter/material.dart';

class ScalarTopics extends StatefulWidget {
  const ScalarTopics({super.key});

  @override
  State<ScalarTopics> createState() => _Task10State();
}

class _Task10State extends State<ScalarTopics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scaler Topics',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (contex, index) {
                    return Container(
                      color: index.isEven ? Colors.green : Colors.yellow,
                      child: Center(
                          child: Text(
                        '$index',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 30),
                      )),
                    );
                  })),
        ],
      ),
    );
  }
}

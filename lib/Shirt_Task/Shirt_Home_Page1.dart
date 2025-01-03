import 'package:batch2ui/Shirt_Task/Shirt_Home_Page2.dart';
import 'package:flutter/material.dart';

class ShirtHomePage1 extends StatefulWidget {
  const ShirtHomePage1({super.key});

  @override
  State<ShirtHomePage1> createState() => _Task11State();
}

class _Task11State extends State<ShirtHomePage1> {
  List<String> names = [
    'T-shirt Polio',
    'T-shirt America',
    'T-shirt New',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
    'T-shirt UK',
  ];
  List images = [
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
    'assets/shirt2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text(
          'T-Shirt Shop',
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: names.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShirtHomePage2(),
                            ));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 150,
                              // color: Colors.amber,
                              child: Image.asset(images[index]),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  // Text('$index'),
                                  Text(names[index]),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 70),
                              child: const Row(
                                children: [
                                  Text('\$25'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

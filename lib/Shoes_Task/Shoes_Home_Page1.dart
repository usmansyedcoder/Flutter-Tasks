import 'package:batch2ui/Shoes_Task/Shoes_Home_Page2.dart';
import 'package:flutter/material.dart';

class ShoesHomePage1 extends StatefulWidget {
  const ShoesHomePage1({super.key});

  @override
  State<ShoesHomePage1> createState() => _Task2State();
}

class _Task2State extends State<ShoesHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(width: 5),
          Icon(
            Icons.shopping_bag,
            size: 30,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              '#featured',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'products',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('#New arrivals',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        const SizedBox(height: 10),
                        const Text('Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                        const SizedBox(height: 10),
                        const Text(
                            'Classis edition Classis edition \nClassis edition Classis edition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ShoesHomePage2(),
                                ));
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                'BUY NOW',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/ic_launcher.png')),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '#Trending',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            const Text(
              '#products',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/ic_launcher.png',
                                height: 100,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    const Text(
                      '#strap',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const Text(
                      'Navy shoes',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/ic_launcher.png',
                                height: 100,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    const Text(
                      '#strap',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const Text(
                      'Navy shoes',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

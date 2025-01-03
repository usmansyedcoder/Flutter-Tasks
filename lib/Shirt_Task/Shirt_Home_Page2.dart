import 'package:batch2ui/Shirt_Task/Shirt_Home_Page3.dart';
import 'package:flutter/material.dart';

class ShirtHomePage2 extends StatefulWidget {
  const ShirtHomePage2({super.key});

  @override
  State<ShirtHomePage2> createState() => _Task12State();
}

class _Task12State extends State<ShirtHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Center(child: Text('Puma')),
        actions: const [Icon(Icons.menu)],
      ),
      body: GridView.builder(
          itemCount: 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'T-Shirt Top',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    // color: Colors.pink,
                    // height: 400,
                    // width: 400,
                    child: Image.asset('assets/shirt2.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Text('32'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Text('33'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Text('34'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Text('35'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShirtHomePage3()),
                          );
                        },
                        child: const Text('BUY NOW'),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}

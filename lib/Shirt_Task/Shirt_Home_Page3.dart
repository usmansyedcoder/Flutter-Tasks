import 'package:flutter/material.dart';

class ShirtHomePage3 extends StatefulWidget {
  const ShirtHomePage3({super.key});

  @override
  State<ShirtHomePage3> createState() => _Task12State();
}

class _Task12State extends State<ShirtHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Congratulations! My Online \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tShop',
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
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            child: const Icon(Icons.tiktok),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
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

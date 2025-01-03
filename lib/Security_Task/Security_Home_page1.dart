import 'package:batch2ui/Security_Task/Security_Home_page2.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecurityHomePage1 extends StatefulWidget {
  const SecurityHomePage1({super.key});

  @override
  State<SecurityHomePage1> createState() => _HomePageSecurityState();
}

class _HomePageSecurityState extends State<SecurityHomePage1> {
  List securityGuards = [
    {
      "name": "Jaxson Kors",
      "rating": "4.5",
      "distance": "15 km",
      "image": "assets/security.png"
    },
    {
      "name": "Justin Rhiel",
      "rating": "4.8",
      "distance": "10 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
    {
      "name": "Randy Vac",
      "rating": "4.7",
      "distance": "12 km",
      "image": "assets/security.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/security.png',
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Williamson R.",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                Text("London, UK",
                    style: TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.telegram,
            size: 40,
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for security guard',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Security Guards near you!'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: securityGuards.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 4,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final guards = securityGuards[index];
                  return Row(
                    children: [
                      ClipRect(
                        child: Image.asset(guards['image']),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(guards['name']),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(guards['rating']),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(guards['rating']),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const ProfilePage(),
                          //         ));
                          //   },
                          //   child: Container(
                          //     color: Colors.green,
                          //     width: 70,
                          //     height: 40,
                          //     child: const Text('Hire Now'),
                          //   ),
                          // )
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SecurityHomePage2(),
                                  ));
                            },
                            child: const Text(
                              'Hire Now',
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

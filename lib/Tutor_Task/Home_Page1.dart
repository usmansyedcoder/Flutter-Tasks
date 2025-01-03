import 'package:batch2ui/Tutor_Task/Home_Page2.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        const Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Row(
              children: [
                Text(
                  'Lets get sarted!',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          color: Colors.white,
          width: 300,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50,
                child: Icon(Icons.facebook),
              ),
              Container(
                child: const Text('Continue with facebook'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.white,
          width: 300,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50,
                child: Icon(Icons.social_distance),
              ),
              Container(
                child: const Text('Continue with Google'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.white,
          width: 300,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50,
                child: Icon(Icons.apple),
              ),
              Container(
                child: const Text('Continue with Apple'),
              )
            ],
          ),
        ),
        const SizedBox(height: 30,),
        Container(
          color: Colors.white,
          width: 300,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: const Text('or'),
              )
            ],
          ),
        ),
        const SizedBox(height: 30,),
        Container(
          color: Colors.white,
          width: 300,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50,
                child: Icon(Icons.email),
              ),
              Container(
                child: const Text('Continue with Email'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage2()),
                );
              },
              child: const Text("Go to Page 2"),
            ),
          ],
        ),
      ]),
    );
  }
}






//expanded used only in column and row
///
///listview is like row and column
///listview has scrolling possible
///
///
///
///listview.builder  
///rich text assignment
///
///next class insta ui complete
///
///
///
///
///
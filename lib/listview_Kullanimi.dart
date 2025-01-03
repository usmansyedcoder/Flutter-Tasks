import 'package:flutter/material.dart';



class ListviewKullanimi extends StatelessWidget {
  const ListviewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListView Kullanımı',
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Kullanımı'),
      ),
      body: ListView.builder(
        itemCount: 20, // Number of items in the list
        itemBuilder: (context, index) {
          final isGreenBackground = index % 2 == 1;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: isGreenBackground ? Colors.green : Colors.lightBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      (80 + index).toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ogrenci Adi ${(80 + index)}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ogrenci Soyad ${(80 + index)}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



///
///
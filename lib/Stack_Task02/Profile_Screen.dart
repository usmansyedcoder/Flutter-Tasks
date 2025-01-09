import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Profile Content
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: Column(
              children: [
                // Profile Card
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Maria Elliott',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Albany, New York',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ProfileStat(title: 'Purchased', value: '120'),
                          ProfileStat(title: 'Wishlist', value: '271'),
                          ProfileStat(title: 'Likes', value: '12K'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Collection
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Collection',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CollectionItem(title: 'Winter', image: 'assets/winter.jpg'),
                    CollectionItem(title: 'Summer', image: 'assets/summer.jpg'),
                    CollectionItem(title: 'Autumn', image: 'assets/autumn.jpg'),
                  ],
                ),
                SizedBox(height: 20),
                // Tags
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tags',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  children: [
                    TagChip(label: 'Kurta'),
                    TagChip(label: 'Jackets'),
                    TagChip(label: 'Lehenga'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String title;
  final String value;

  const ProfileStat({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class CollectionItem extends StatelessWidget {
  final String title;
  final String image;

  const CollectionItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}

class TagChip extends StatelessWidget {
  final String label;

  const TagChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue.shade100,
    );
  }
}

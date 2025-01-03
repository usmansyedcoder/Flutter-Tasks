import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recipe List',
      home: RecipeListScreen(),
    );
  }
}

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data
    final List<Map<String, String>> recipes = [
      {"title": "Palak Paneer", "image": "assets/logo.jpeg"},
      {"title": "Jeera Rice", "image": "assets/logo.jpeg"},
      {"title": "Butter Nan", "image": "assets/logo.jpeg"},
      {"title": "Gulabjam", "image": "assets/logo.jpeg"},
      {"title": "Palak Paneer", "image": "assets/logo.jpeg"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipes'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      recipes[index]["image"]!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      recipes[index]["title"]!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

import 'package:batch2ui/Burger_App/Burger_App_Page1.dart';
import 'package:batch2ui/Plant_Task/Plant_Home_page1.dart';
import 'package:batch2ui/Security_Task/Security_Home_page1.dart';
import 'package:batch2ui/Shirt_Task/Shirt_Home_Page1.dart';
import 'package:batch2ui/Shoes_Task/Shoes_Home_Page1.dart';
import 'package:batch2ui/Tutor_Task/Home_Page1.dart';
import 'package:batch2ui/congrats_Card.dart';
import 'package:batch2ui/flutter_Tutorial.dart';
import 'package:batch2ui/instagram.dart';
import 'package:batch2ui/listview_Kullanimi.dart';
import 'package:batch2ui/practice.dart';
import 'package:batch2ui/profile_Task.dart';
import 'package:batch2ui/recipe_List.dart';
import 'package:batch2ui/review_Task.dart';
import 'package:batch2ui/scalar_Topics.dart';
import 'package:batch2ui/Quiz_App.dart';
import 'package:batch2ui/Profile_Information.dart';
import 'package:batch2ui/zap_Surveys.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _Task2State();
}

class _Task2State extends State<Task> {
  // List of tasks and their respective pages
  final List<Map<String, dynamic>> tasks = [
    {'title': 'Zap Surveys', 'widget': const ZapSurveys()},
    {'title': 'Congrats Card', 'widget': const CongratsCard()},
    {'title': 'Quiz App', 'widget': const QuizApp()},
    {'title': 'Profile', 'widget': const ProfileInformation()},
    {'title': 'Burger App', 'widget': const BurgerAppPage1()},
    {'title': 'Shoes Task', 'widget': const ShoesHomePage1()},
    {'title': 'Profile Task', 'widget': const ProfileTask()},
    {'title': 'Tutor Task', 'widget': const HomePage1()},
    {'title': 'Recipe List', 'widget': const RecipeList()},
    {'title': 'Instagram', 'widget': const Instagram()},
    {'title': 'Kullanimi', 'widget': const ListviewKullanimi()},
    {'title': 'Flutter Tutorial', 'widget': const FlutterTutorial()},
    {'title': 'Scalar Task', 'widget': const ScalarTopics()},
    {'title': 'Shirt Task', 'widget': const ShirtHomePage1()},
    {'title': 'Security Task', 'widget': const SecurityHomePage1()},
    {'title': 'Review Task', 'widget': const ReviewTask()},
    {'title': 'Plant Login', 'widget': const PlantHomePage1()},
    {'title': 'Practice', 'widget': const Practice()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 190, 46),
        title: const Center(
          child: Text(
            'All Tasks',
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two tasks per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4 / 2,
          ),
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => task['widget']),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    task['title'],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sacramento',
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

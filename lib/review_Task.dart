import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ReviewTask extends StatelessWidget {
  const ReviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Write a Review'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.jpeg'),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'How was your experience\n \t\t\t\t\t\twith stephen N',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingStars(
                  starBuilder: (index, color) => Icon(
                    Icons.star,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Write a comment',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                'Max 250 words',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue, width: 2), // Border for the container
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: const SingleChildScrollView(
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Remove the default TextField border
                    hintText: 'Write a review',
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 50,
                width: 300,
                child: const Center(child: Text('Submit Review')),
              )
            ],
          )
        ],
      ),
    );
  }
}

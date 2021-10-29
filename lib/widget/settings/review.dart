import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        LaunchReview.launch();
      },
      child: Icon(Icons.star),
    );
  }
}

import 'package:flutter/material.dart';

class Mysquare extends StatelessWidget {
  final String posts;

  const Mysquare({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            color: Colors.purple,
            child: Center(
              child: Text(posts, style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
        ),
      ],
    );
  }
}

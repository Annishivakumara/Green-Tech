import 'package:flutter/material.dart';

class Voluntear extends StatelessWidget {
  const Voluntear({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Join Vlountear Team',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}
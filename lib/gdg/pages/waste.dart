import 'package:flutter/material.dart';

class Waste extends StatelessWidget {
  const Waste({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Donate E- Waste',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}
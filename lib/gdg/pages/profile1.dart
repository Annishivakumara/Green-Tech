import 'package:flutter/material.dart';

class Camara extends StatelessWidget {
  const Camara({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
     color: Colors.white
      ),
      child: Center(
          child: Text(
            'Upload hare',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        
        ),
    );
  }
}
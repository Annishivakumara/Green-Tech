import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final String stor;
  Circles({required this.stor});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
        child: Center(
          child: Text(stor,
          style:TextStyle(
            color: Colors.amber,
            fontSize: 30,
            fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

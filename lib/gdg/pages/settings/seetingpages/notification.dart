import 'package:flutter/material.dart';

class  notification extends StatelessWidget {
  const  notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 35.0,
            fontWeight: FontWeight.normal,
            
          ),
        ),
      ),
    );
  }
}
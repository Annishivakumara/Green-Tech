import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        toolbarHeight: 100.0,
        title: Text(
          'Log Out ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 200,
          ),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Text(
            'Do you Want To Log out ',
            style: TextStyle(
                color: const Color.fromARGB(255, 160, 22, 22),
                fontSize: 24,
                fontWeight: FontWeight.normal,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Automateicly1 extends StatelessWidget {
  const Automateicly1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Autometically',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
             
                  Navigator.push(context,
                      MaterialPageRoute(
                      
                        builder: (context) => Secondscreen()));
                
              },
              child: Text(
                'Text to The Second Screen ',
              )),
        ),
      ),
    );
  }
}

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Second Screen ',
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Text('Hey This IS Second Screen '),
        ),
      ),
    );
  }
}

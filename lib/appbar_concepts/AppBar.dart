import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBar1 extends StatefulWidget {
  const AppBar1({super.key});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text(
            'Hi SHIVU',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                print("Setting tapped");
              },
              icon: Icon(Icons.notifications),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {
                print('Notification ');
              },
              icon: Icon(Icons.settings),
              iconSize: 35.0,
            ),
            IconButton(
                onPressed: () {
                  print(
                    'Hey I am Search',
                  );
                },
                icon: Icon(Icons.message),
                iconSize: 35.0,
                ),
          ],
          leading: IconButton(
            onPressed: () {
              print(
                "Menu Clicked",
              );
            },
            icon: Icon(Icons.menu),
            iconSize: 35.0,
            isSelected: true,
          ),
          
          elevation: 10.0,
          automaticallyImplyLeading: true,
          toolbarHeight: 95.0,
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          /*   Colors.deepPurple,
              Colors.deepOrangeAccent,
              Colors.greenAccent,
              */
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,)
          ),
        ),
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
        /* BeveledRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          )
         )
         */
         //  scrolledUnderElevation: 100.0,
         iconTheme: IconThemeData(color: Colors.white,size: 10),
         systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness:Brightness.dark,
          statusBarColor:WidgetStateColor.transparent,
          statusBarIconBrightness: Brightness.dark, ),
         
        ),
        body: Center(
          child: Text(
            'Well Come Shivu',
          ),
        ),
      ),
    );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

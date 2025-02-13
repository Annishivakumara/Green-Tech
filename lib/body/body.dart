import 'package:flutter/material.dart';
import 'package:flutter_application_1/appbar/AppBar.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      extendBodyBehindAppBar: true,
      primary: true,
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Hi SHIVU \n'
          'Presidency University',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 5,
        shadowColor: Colors.black,
        toolbarTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("settting Clicked");
            },
            icon: Icon(Icons.settings),
            iconSize: 35.0,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35.0,
        ),
      ),
      body: Container(
        
        
        child: Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width/2,
          //padding: EdgeInsets.all(20.0),
         // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          decoration: BoxDecoration(
        
            color: Colors.white,
            gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 255, 255, 255),
             const Color.fromARGB(255, 255, 250, 245),
             const Color.fromARGB(255, 255, 255, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,),
           
           border: Border.all(
           color: Colors.black,width: 50.0,
           
           ),
           borderRadius: BorderRadius.circular(50.0),
             ),
      
          child: Center(
           child:  Text('Hello Shivu',style: TextStyle(
            color: const Color.fromARGB(255, 243, 0, 0),
            fontSize: 35.0
            ,fontWeight: FontWeight.bold,
           ),),
            
          ),
        ),
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print('added $count');
        },
        child: Icon(Icons.add),
      
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

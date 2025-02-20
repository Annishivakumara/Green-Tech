import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Navigationbar/pages/Voluntear.dart';
import 'package:flutter_application_1/Navigationbar/pages/home.dart';
import 'package:flutter_application_1/Navigationbar/pages/profile.dart';
import 'package:flutter_application_1/Navigationbar/pages/settings/firstline.dart';
import 'package:flutter_application_1/Navigationbar/pages/userHome.dart';
import 'package:flutter_application_1/Navigationbar/pages/waste.dart';

class Navigate extends StatefulWidget {
  
  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  int _selectedIndex = 0;

  void _navigateIndex(int index) {
    
   {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final List<Widget> _places = [
    Userhome(),  // Home
    Waste(),     // Waste
    Profile(),   // Profile
    Voluntear(), // Volunteer
    Camara(),    // Camera
  ];

  @override
  
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Hello,Anni\n Bengalore karnataka'),
        centerTitle: false,
        elevation: 10.0,
        toolbarHeight: 100.0,
        leading: Icon(Icons.sunny,size: 35.0,),
        actions: [
          IconButton(onPressed: 
        (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
          settingpage()
          )
          );
        }, icon: Icon(Icons.settings),iconSize: 35.0,),
        ],
        
         systemOverlayStyle: SystemUiOverlayStyle(
         statusBarColor: Colors.transparent,
         statusBarBrightness: Brightness.dark
        ),
        
      ),
     

      body: _places[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.tram_sharp), label: "Waste"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Volunteer"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

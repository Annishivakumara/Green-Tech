import 'package:flutter/material.dart';
import 'package:flutter_application_1/appbar_concepts/AppBar.dart';

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
      //  extendBodyBehindAppBar: true,
      //  primary: true,
      // backgroundColor:  const Color.fromARGB(255, 0, 0, 0),
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
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
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
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
              width: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: 'Type Something',
                // labelText: 'Type hare',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
                helperStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                hoverColor: Colors.orangeAccent,
                focusColor: Colors.orangeAccent,
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Icon(
                    Icons.location_on,
                    size: 35,
                    color: Colors.orangeAccent,
                  ),
                ),
                prefixIcon: Icon(Icons.animation),
                suffixIcon: IconTheme(
                  data: IconThemeData(
                    color: Colors.orangeAccent,
                    size: 35.0,
                  ),
                  child: Icon(Icons.search),
                ),
                suffixStyle: TextStyle(
                  color: Colors.orangeAccent,
                ),
                suffixIconColor: Colors.orangeAccent,
                // fillColor: Colors.orangeAccent,
                //  filled: true,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your Story & soceity story's",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: const Color.fromARGB(255, 234, 158, 81))
                      ],
                      backgroundBlendMode: BlendMode.darken,
                    ),

                  ),
                ],
              ),
            ),
             Expanded(
               child: Container(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Container(
                        height: 100,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 0,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                      Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                      Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                      Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ],
                ),
                           ),
             )
          ],
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

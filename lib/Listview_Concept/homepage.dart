import 'package:flutter/material.dart';

import 'package:flutter_application_1/Listview_Concept/Mysquare.dart';
import 'package:flutter_application_1/Listview_Concept/circles.dart'; // Import Mysquare

class Homepage extends StatelessWidget {
  final List _posts = [
    'Post1',
    'Post2',
    'Post3',
    'Post4',
    'Post5',
  ];
  final List _story = [
    'story1',
    'story2',
    'story3',
    'story4',
    'story5',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Instagram Story's
          SizedBox(
            height: 35,
          ),
          Container(
            height: 100,
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _story.length,
                  itemBuilder: (context, index) {
                    return Circles(
                      stor: _story[index],
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          //Instagram Posts
          Expanded(
            child: Container(
              height: 300.0,
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return Mysquare(
                      posts: _posts[index],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Silever extends StatelessWidget {
  const Silever({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('App Bar Slivers'),
            expandedHeight: 300.0,
            floating: false,
            pinned:false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                
                color:Colors.purpleAccent,
              ),
              title: Text('App Bar Slivers'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.black,
                  height: 300.0,
                  width: 40.0,
                
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.black,
                  height: 300.0,
                  width: 40.0,
                
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.black,
                  height: 300.0,
                  width: 40.0,
                
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.black,
                  height: 300.0,
                  width: 40.0,
                
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
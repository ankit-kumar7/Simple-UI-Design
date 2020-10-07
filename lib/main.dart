import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UiDesign(),
    );
  }
}

class UiDesign extends StatefulWidget {
  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Design"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/lake.jpg',
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                      children: <Widget>[
                        Text("Naini Lake Campground",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),),
                        Text("Nanital, India",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),),
                      ],
                    ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 40.0,
                ),
                Text("49",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                    Text("Call"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                    Text("Route"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                'The fact that Nainital is named after the Naini Lake speaks highly of its significance.'+
                'This beautiful, stagnant pool of water in the heart of the city, is surrounded by seven majestic'+
                'mountains and is a popular tourist attraction. You can enjoy row boating as well as paddle boating'+
                'at Niani Lake',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),),
          ),
        ],
      ),
    );
  }
}

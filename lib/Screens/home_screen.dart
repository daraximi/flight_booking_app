// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Good Morning"),
                    Container(
                      child: Image.asset("assets/images/img_1.png")
                    )
                  ],
                )
              ],
            )
          ),
        ],
      )
    );
  }
}

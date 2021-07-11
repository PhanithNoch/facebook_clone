import 'package:facebook_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'models/newfeed_model.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

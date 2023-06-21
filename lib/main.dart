import 'package:flutter/material.dart';
import 'package:market/screens/home_screen.dart';
import 'package:market/screens/log_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electronic Store',
      theme: ThemeData(
        primaryColor: Color(0xFF219ebc),
        accentColor: Color(0xFF219ebc),
      ),
      home: HomeScreen()
      //HomeScreen(),
    );
  }
}

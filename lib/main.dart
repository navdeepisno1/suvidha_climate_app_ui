import 'package:flutter/material.dart';
import 'package:suvidha_climate_app/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suvidha Climate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

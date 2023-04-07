import 'package:flutter/material.dart';
import 'package:firebasetut/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATLE',
      theme: ThemeData(
        primarySwatch: (Colors.teal),
      ),
      home: const HomeScreen(),
    );
  }

}
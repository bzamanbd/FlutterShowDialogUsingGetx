import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Show Dialog using Getx';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: HomeScreen(title: title,),
      routes: {
        '/home-screen':(_)=>HomeScreen(title: title,),
      },
    );
  }
}
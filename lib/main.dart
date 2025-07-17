import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/home_page_cupertino.dart';
import 'home_page.dart';
import 'amni.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomeScreen(),
    );
  }
}

class MyAppCupertino extends StatelessWidget {
  const MyAppCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home:HomeScreenCupertino (),
    );
  }
}

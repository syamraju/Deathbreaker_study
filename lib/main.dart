import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

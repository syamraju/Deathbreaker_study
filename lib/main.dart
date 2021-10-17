import 'package:flutter/material.dart';
import 'package:untitled/Utilities/routies.dart';
import 'Pages/home_page.dart';
import 'Pages/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(Context) => loginpage(),
        MyRoutes.HomeRoute:(Context) => homepage(),
      },
    );
  }
}

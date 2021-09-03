import 'package:flutter/material.dart';
import 'package:task_manager/screens/home/home_screen.dart';
import 'package:task_manager/screens/sign_in_screen.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const color=const Color(0xF56588);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28)
          )
        ),
        scaffoldBackgroundColor: Color.fromRGBO(245, 101, 136, 1),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        SignUpScreen.routeName:(context)=>SignUpScreen(),
        SignIn.routeName:(context)=>SignIn(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );
  }
}


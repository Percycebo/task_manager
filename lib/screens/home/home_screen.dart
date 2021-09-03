import 'package:flutter/material.dart';
import 'package:task_manager/screens/home/body/body.dart';

class HomeScreen extends StatelessWidget {
static String routeName="Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}

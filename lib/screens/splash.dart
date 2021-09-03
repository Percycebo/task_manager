import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/widgets/button.dart';
class SplashScreen extends StatelessWidget {
  static String routeName='splash screen';


  @override
  Widget build(BuildContext context) {
    void pressed(){
      print('PRESSED');
      Navigator.of(context).pushNamed(SignUpScreen.routeName);
    }
    const color=const Color(0xF56588);
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Get Things Done!!',style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 400,
              child: Center(child: Text('LOGO')),
            ),
            Button(title: 'Continue', onTap: pressed)
          ],
        ),
      ),
    );
  }

}

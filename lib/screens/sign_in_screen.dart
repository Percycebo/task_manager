
import 'package:flutter/material.dart';
import 'package:task_manager/screens/home/home_screen.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/widgets/button.dart';

class SignIn extends StatefulWidget {
  static String routeName='Sign In';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String passowrd='';
  String email='';
  @override
  Widget build(BuildContext context) {
    void validate(){
      if(_formKey.currentState!.validate()){
        _formKey.currentState!.save();
        //print(email);
        //print(passowrd);
        Navigator.of(context).pushNamed(HomeScreen.routeName);
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Text('Sign In',style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
              ),
            SizedBox(
              height: 200,
              child: Center(child: Text('LOGO')),
            ),
              Form(
                key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                children: [
                    buildEmailContainer(),
                    SizedBox(
                     height: 15,
                    ),
                    buildPasswordContainer(),
                ],
              ),
                  )),
              SizedBox(
                height: 30,
              ),
              Text('Forgot your password?',style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 30,
              ),
              Button(
                  title: "Sign In",
                  onTap: validate
                  ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account? ',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(SignUpScreen.routeName);
                    },
                    child: Text('Sign Up',style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildPasswordContainer() {
    return TextFormField(
      onTap: (){},
      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          return 'Please enter your password';
        }
        else if(value.length<8){
          return "Your password is too short";
        }

      },
      onSaved: (value){
        if(value!.isNotEmpty){
          passowrd=value;
        }
      },
      decoration: InputDecoration(
          hintText: "Enter Password",
          fillColor: Colors.white,
          filled: true,
          errorStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(28),
              gapPadding: 4.0
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 22,vertical: 20)
      ),
    );
  }

  TextFormField buildEmailContainer() {
    return TextFormField(
      onTap: (){},
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty||!value!.contains("@")){
          return "Enter valid email";
        }
      },
      onSaved: (value){
        if(value!.isNotEmpty){
          email=value;
        }
      },
      decoration: InputDecoration(
          hintText: "Enter your last name",
          fillColor: Colors.white,
          filled: true,
          errorStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(28)
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 22,vertical: 20)
      ),
    );
  }
}

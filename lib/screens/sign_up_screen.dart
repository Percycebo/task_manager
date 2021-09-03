import 'package:flutter/material.dart';
import 'package:task_manager/screens/home/home_screen.dart';
import 'package:task_manager/screens/sign_in_screen.dart';
import 'package:task_manager/widgets/button.dart';
class SignUpScreen extends StatefulWidget {
  static String routeName='Sign Up Screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String passowrd='';
  String name='';
  String email='';
  String confirmPassword='';
  void validateUser(){
    _formKey.currentState!.save();
    if(!_formKey.currentState!.validate()){
      print('Not succesful');
    }
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print(email);
      print(name);
      print(passowrd);
      print(confirmPassword);
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Text('Sign Up',style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 100,
                child: Center(child: Text('LOGO')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildNameContainer(),
                      SizedBox(
                        height: 15,
                      ),
                      buildEmailContainer(),
                      SizedBox(
                        height: 15,
                      ),
                      buildPasswordContainer(),
                      SizedBox(
                        height: 15,
                      ),
                      buildConfirmPasswordContainer()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Button(title: 'Sign Up', onTap: validateUser),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(SignIn.routeName);
                    },
                    child: Text('Sign In',style: TextStyle(
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

  TextFormField buildConfirmPasswordContainer() {
    return TextFormField(
                      onTap: (){},
                      obscureText: true,
                      validator: (value){
                      },
                      onSaved: (value){
                        if(value!.isNotEmpty){
                          confirmPassword=value;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
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

  TextFormField buildNameContainer() {
    return TextFormField(
                      onTap: (){},
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please enter your name";
                        }else if(value.length<2){
                          return "Enter valid name";
                        }
                      },
      onSaved: (value){
                        if(value!.isNotEmpty){
                          name=value;
                        }
      },
                      decoration: InputDecoration(
                        hintText: "Enter your name",
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

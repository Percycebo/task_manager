import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  String title;
  Function onTap;
  Button({required this.title,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onTap(),
      borderRadius: BorderRadius.circular(15),
      splashColor: Color.fromRGBO(245, 121, 136, 1),
      child: Container(
        height: 71,
        width: 204,
        decoration: BoxDecoration(
          color: Color.fromRGBO(193, 0, 47, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Text(title,style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}

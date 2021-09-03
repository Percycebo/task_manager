import 'package:flutter/material.dart';
class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color color=Color.fromRGBO(245, 101, 136, 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('Work',style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

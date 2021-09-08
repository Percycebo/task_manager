import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color color=Color.fromRGBO(245, 101, 136, 1);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          ),
       SizedBox(
         height: 100,
         child: Calendar(
                  startOnMonday: true,
                  weekDays: ['Mon','Tue','Wed','Thur','Fri','Sat','Sun'],
                  isExpandable: true,
                  selectedColor: Colors.orange,
                  todayColor: Colors.blue,
                  locale: 'de_DE',
                  todayButtonText: 'Namhlanje',
                  isExpanded: true,
                  expandableDateFormat:'EEEE, dd. MMMM yyyy',
                  dayOfWeekStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11
                  ),
                ),
        ],
      ),
    );
  }
}

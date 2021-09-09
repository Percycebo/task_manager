import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color color=Color.fromRGBO(245, 101, 136, 1);
  DateTime _selectedDay=DateTime.now();
  DateTime _focusedDay=DateTime.now();
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
                Text('Work List',style: TextStyle(
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
         height: 10,
       ),
       SizedBox(
         height: 140,
         child: Container(
           padding: EdgeInsets.symmetric(horizontal: 15),
           color: Colors.white,
           child: TableCalendar(
             calendarBuilders: CalendarBuilders(
               dowBuilder: (context, day) {
                 if (day.weekday == DateTime.sunday || day.weekday==DateTime.saturday) {
                   final text = DateFormat.E().format(day);

                   return Center(
                     child: Text(
                       text,
                       style: TextStyle(color: Colors.red),
                     ),
                   );
                 }
               },

             ),

             firstDay: DateTime.utc(2010, 10, 16),
             lastDay: DateTime.utc(2030, 3, 14),
             focusedDay: DateTime.now(),
             calendarFormat: CalendarFormat.week,
             selectedDayPredicate: (day) {
               return isSameDay(_selectedDay, day);
             },
             onDaySelected: (selectedDay, focusedDay) {
               setState(() {
                 _selectedDay = selectedDay;
                 _focusedDay = focusedDay; // update `_focusedDay` here as well
               });
             },
           ),
         ),
      ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                taskWidgets(title: 'Data Analytics',
                description:'Create a Tableau dashboard using data from MySQL' ),
                SizedBox(height: 10,),
                taskWidgets(title: 'Data Analytics',
                    description:'Create a Tableau dashboard using data from MySQL' ),
                SizedBox(height: 10,),
                taskWidgets(title: 'Data Analytics',
                    description:'Create a Tableau dashboard using data from MySQL' ),
                SizedBox(height: 10,),
              ],
            ),
          )

  ])
    );
  }

  Container taskWidgets({required String title,required String description}) {
    return Container(
                height: 150,
                width: 500,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(237, 155, 155, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 8,
                        )
                      ],
                    ),
                    SizedBox(height: 6,),
                    Text(description,style: TextStyle(
                      fontSize: 16
                    ),),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.access_time,size: 40,),
                        SizedBox(width: 16,),
                        Text('12:00 AM - 3:00 PM',)
                      ],
                    )
                  ],
                )
              );
  }
}

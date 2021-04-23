import 'package:flutter/material.dart';
import 'dart:async';

class ayt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ayt_page();
  }
}
class ayt_page extends StatefulWidget {
  @override
  _ayt_pageState createState() => _ayt_pageState();
}

class _ayt_pageState extends State<ayt_page> {

  static const duration = const Duration(seconds: 1);



  //print(differenceaw);

  int secondsPassed = 0;
  bool isActive = true;
  String hour_string = "";
  String minute_string = "";
  String second_string = "";

  Timer timer;
  int minute = 0;
  int hour = 0;
  int second = 0;
  final int timerMaxSeconds = 60;
  void handleTick() {
    if (isActive) {
      setState(() {
        //secondsPassed = secondsPassed + 1;




        final birthday = DateTime(2021, 8, 28 );
        final date = DateTime.now();
        final difference = birthday.difference(date);





        List<String> splitted = difference.toString().split(":");


        List<String> splitteda =   splitted[2].split(".");


        hour_string = splitted[0];
        minute_string = splitted[1];
        second_string = splitteda[0];

      });
    }
  }


  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: Center(
            child: Text('AYT'),
          ),
        ),

        body: Container(
          child : Column(

            children: [

SizedBox(height: 30.0,),

              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[



                  Expanded(
                    flex: 1,
                    child: Container(
                      child: LabelText(
                          label: 'Saat',
                          value: hour_string.toString().padLeft(2, '0')),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: LabelText(
                          label: 'dakika',
                          value: minute_string.toString().padLeft(2, '0')),
                    ),
                  ),
                  Expanded(
                      flex : 1,
                      child: Container(child: LabelText(label: 'Saniye', value: second_string.toString().padLeft(2, '0')))),

                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}



class LabelText extends StatelessWidget {
  LabelText({this.label, this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.lightGreen,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}




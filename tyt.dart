

import 'package:flutter/material.dart';
import 'dart:async';



class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
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




        final birthday = DateTime(2021, 8, 27 );
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
  TextEditingController turke_input_dogru = new TextEditingController();
  TextEditingController turke_input_yanlis = new TextEditingController();

  String turkce_net = "" ;

  TextEditingController sos_input_dogru = new TextEditingController();
  TextEditingController sos_input_yanlis = new TextEditingController();

  String sos_net = "";

  TextEditingController mat_input_dogru = new TextEditingController();
  TextEditingController mat_input_yanlis = new TextEditingController();

  String mat_net = "" ;

  TextEditingController fen_input_dogru = new TextEditingController();
  TextEditingController fen_input_yanlis = new TextEditingController();

  String fen_net = "";

  TextEditingController diploma = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
  /*  int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);
    */
    //int seconds = int.parse(asd) % 60;
  //  int minutes = secondsPassed ~/ 60;
   // int hours = secondsPassed ~/ (60 * 60);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Builder(builder: (context) =>    Scaffold(
            backgroundColor: Colors.green[400],
            appBar: AppBar(
              backgroundColor: Colors.teal[300],
              title: Center(
                child: Text('TYT'),
              ),
            ),
            body: Center(
              child: Column(

                children: <Widget>[
                  SizedBox(height: 10.0,),

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


                  // Puan Hesaplama

Container(
  decoration: BoxDecoration(
    color: Colors.greenAccent,
    borderRadius: BorderRadius.circular(20.0),
  ),

  padding: EdgeInsets.all(10.0),
  margin: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 10.0) ,

  child:   Column(
    children: [

      // Türkçe
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Row(

          children: [

            Expanded(

              flex: 1,
              child: Text("Türkçe" , style: TextStyle(color: Colors.black),),
            ),


            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: turke_input_dogru,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Doğru',
                    hintStyle: TextStyle(color: Colors.blue , fontSize: 10.0),
                  ),

                ),
              ),

            ),


            SizedBox(width: 20.0,),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: turke_input_yanlis,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Yanlış',
                    hintStyle: TextStyle(color: Colors.red , fontSize: 10.0),
                  ),

                ),
              ),

            ),

            SizedBox(width: 20.0,),
            Expanded(
              flex: 1,
              child: Container(


                child: Text(turkce_net + " Net"),
              ),

            ),
          ],),
      ),

      // Sosyal Bilimler
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Row(

          children: [

            Expanded(

              flex: 1,
              child: Center(child: Text("Sosyal Bilimler")),
            ),


            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: sos_input_dogru,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Doğru',
                    hintStyle: TextStyle(color: Colors.blue , fontSize: 10.0),
                  ),

                ),
              ),

            ),


            SizedBox(width: 20.0,),

            Expanded(
              flex: 1,
              child: Container(

                color: Colors.white,
                child: TextField(
                  controller: sos_input_yanlis,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Yanlış',
                    hintStyle: TextStyle(color: Colors.red , fontSize: 10.0),
                  ),

                ),
              ),

            ),

            SizedBox(width: 20.0,),
            Expanded(
              flex: 1,
              child: Container(


                child: Text(sos_net + " Net"),
              ),

            ),
          ],),
      ),

      // Temel Matematik
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Row(

          children: [

            Expanded(

              flex: 1,
              child: Center(child: Text("Temel Matematik", style: TextStyle(fontSize: 10.0),),),
            ),


            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: mat_input_dogru,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Doğru',
                    hintStyle: TextStyle(color: Colors.blue , fontSize: 10.0),
                  ),

                ),
              ),

            ),


            SizedBox(width: 20.0,),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: mat_input_yanlis,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Yanlış',
                    hintStyle: TextStyle(color: Colors.red , fontSize: 10.0),
                  ),

                ),
              ),

            ),

            SizedBox(width: 20.0,),
            Expanded(
              flex: 1,
              child: Container(


                child: Text(mat_net + " Net"),
              ),

            ),
          ],),
      ),

      // Fen bilimleri

      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Row(

          children: [

            Expanded(

              flex: 1,
              child: Center(child: Text("Fen bilimleri")),
            ),


            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: fen_input_dogru,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Doğru',
                    hintStyle: TextStyle(color: Colors.blue , fontSize: 10.0),
                  ),

                ),
              ),

            ),


            SizedBox(width: 20.0,),

            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: fen_input_yanlis,
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Yanlış',
                    hintStyle: TextStyle(color: Colors.red , fontSize: 10.0),
                  ),

                ),
              ),

            ),

            SizedBox(width: 20.0,),
            Expanded(
              flex: 1,
              child: Container(


                child: Text(fen_net + " Net"),
              ),

            ),
          ],),
      ),


      // Diploma Notu

      Padding(
        padding: const EdgeInsets.all(8.0),
        child:   Row(
          children: [
            Expanded(
                flex: 1,
                child: Text("Diploma Notu:")),

            SizedBox(width: 15.0,),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: diploma,
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    counterText: "",
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Diploma Notunuz.',
                    hintStyle: TextStyle(color: Colors.grey , fontSize: 10.0),
                  ),

                ),
              ),
            ),

            SizedBox(width: 20.0,),
            Expanded(
              flex: 1,
              child: Container(


                child: Text(""),
              ),

            ),
          ],
        ),
      ),





    ],
  ),
),






                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0 , right: 30.0 , top: 2.0 , bottom: 2.0),
                      child: RaisedButton(
                        color: Colors.green[800] ,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            "Puanımı Hesapla.",
                            style: TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                        onPressed: () {
                          setState(() {


                          // Turkce




                            double turkce_dogru = double.parse(turke_input_dogru.text) ;
                            double turkce_yanlis = double.parse(turke_input_yanlis.text) * 0.25;

                            double turkce_sonuc = turkce_dogru - turkce_yanlis;

                            turkce_net = turkce_sonuc.toString();

                            // Sosyal Bilimler

                            double sos_dogru = double.parse(sos_input_dogru.text) ;
                            double sos_yanlis = double.parse(sos_input_yanlis.text) * 0.25;

                            double sos_sonuc = sos_dogru - sos_yanlis;

                            sos_net = sos_sonuc.toString();


                            // Temel Matematik

                            double mat_dogru = double.parse(mat_input_dogru.text) ;
                            double mat_yanlis = double.parse(mat_input_yanlis.text) * 0.25;

                            double mat_sonuc = mat_dogru - mat_yanlis;

                            mat_net = mat_sonuc.toString();


                            //Fen bilimleri

                            double fen_dogru = double.parse(fen_input_dogru.text) ;
                            double fen_yanlis = double.parse(fen_input_yanlis.text) * 0.25;

                            double fen_sonuc = fen_dogru - fen_yanlis;

                            fen_net = fen_sonuc.toString();

                            // Diploma


                            double diplomasiz_sonuc = (turkce_sonuc * 3.3) + (sos_sonuc * 3.3) + (mat_sonuc * 3.4) + (fen_sonuc * 3.4) + 100 ;

                            double diplomali_sonuc = (turkce_sonuc * 3.3) + (sos_sonuc * 3.3) + (mat_sonuc * 3.4) + (fen_sonuc * 3.4) + 100 + (double.parse(diploma.text) * 0.6) ;


                            showAlertDialog(context , diplomasiz_sonuc.toString() , diplomali_sonuc.toString() );






                          });

                        },
                      ),
                    ),

                  ),


                ],
              ),
            ),
          ),
        ),));
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
        color: Colors.blueAccent,
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

showAlertDialog(BuildContext context , String diplomasiz_sonuc , String diplomali_sonuc  ) {

  // set up the button
  Widget okButton = RaisedButton(
    color: Colors.teal[200],
    child: Text("Harika" , style: TextStyle(color: Colors.white),),
   onPressed: () {
     // Navigator.pop(context);
     Navigator.of(context, rootNavigator: true).pop();
   },
  );


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.white,
    elevation: 25.0,

    title: Text("Tyt Sınav sonucunuz."),
    content: Text("Diplomasız Not: " +diplomasiz_sonuc + "\n\nDiplomali Not: " + diplomali_sonuc ),
    actions: [

      okButton,

    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );


}


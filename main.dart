import 'package:ders_sayac/ayt.dart';
import 'package:flutter/material.dart';
import 'package:ders_sayac/about.dart';
import 'tyt.dart';
import 'package:flutter/services.dart';
import 'package:admob_flutter/admob_flutter.dart';
void main() {

  // Screen lock
  WidgetsFlutterBinding.ensureInitialized();
 SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);



  runApp(MyApp());




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  AdmobInterstitial interstitialAd;

  @override
  void dispose() {
    interstitialAd.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    interstitialAd = AdmobInterstitial(
      adUnitId: "ca-app-pub-3940256099942544/1033173712",
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();

      },
    );

    interstitialAd.load();
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[400],

        body: Column(

       

          children: <Widget>[



               Container(
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset("images/ayt_first.png"
                                ,
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: EdgeInsets.all(10),
                            ),
                          ),


Row(
  children: [
      Expanded(
        flex: 1,
        child: Container(
          child: FlatButton(
            onPressed: ()  {
              setState(() async {

             

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new TimerApp()));
              });
            },
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset("images/tyt.png"
                ,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ayt()));
              });
            },
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset("images/ayt.png"
                ,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
        ),
      ),
  ],
),

            SizedBox(height: 150.0,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: FlatButton(
                  onPressed: () {
                    setState(() {

                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new about()));
                    });

                  },
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset("images/know.png",
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
              ),
            ),



          ],
        ),

      ),
    );
  }
}

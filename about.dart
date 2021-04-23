import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';


// animated_text_kit: ^3.0.0
//  delayed_display: ^1.1.0
//  flutter_web_browser: ^0.13.0

// Fontslarımız https://fonts.google.com/ sitesinde DancingScript , Raleway-Black

//  flutter build --release
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  child: Image.asset(
                    "images/ben.jpg",
                  ),
                  radius: 80.0,
                  foregroundColor: Colors.black,
                ),
                Divider(
                  height: 20.0,
                  indent: 80.0,
                  endIndent: 80.0,
                  color: Colors.teal,
                  thickness: 0.5,
                ),
                TyperAnimatedTextKit(
                  speed: Duration(milliseconds: 500),
                  text: ["Developer"],
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 35.0,
                    fontFamily: "DancingScript",
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  child: FlatButton(
                    onPressed: () {
                      FlutterWebBrowser.openWebPage(
                          url: "https://www.instagram.com/hatay_berkay/");
                    },
                    child: Card(
                      elevation: 15.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                      child: ListTile(
                        leading: Icon(
                          Icons.accessibility,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        title: Text(
                          "Hatay Berkay Işıkoğlu",
                          style: TextStyle(
                            fontFamily: "Raleway-Black",
                          ),
                        ),
                        subtitle: Text("Developer/Youtuber"),
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 2),
                  child: FlatButton(
                    onPressed: () {
                      FlutterWebBrowser.openWebPage(
                          url:
                          "https://www.youtube.com/channel/UCJtccO3elQlLwmceD13fc-A?view_as=subscriber");
                    },
                    child: Card(
                      elevation: 15.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                      child: ListTile(
                        leading: Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        title: Text(
                          "Follow me.",
                          style: TextStyle(
                            fontFamily: "Raleway-Black",
                          ),
                        ),
                        subtitle: Text(
                          "Hatay Berkay Isıkoğlu",
                        ),
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 3),
                  child: FlatButton(
                    onPressed: () {
                      FlutterWebBrowser.openWebPage(
                          url: "https://www.sonoflightsoftware.com/");
                    },
                    child: Card(
                      elevation: 15.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      color: Colors.blue,
                      child: ListTile(
                        leading: Icon(
                          Icons.network_wifi,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        title: Text(
                          "Connect me.",
                          style: TextStyle(
                            fontFamily: "Raleway-Black",
                          ),
                        ),
                        subtitle: Text("www.sonoflightsoftware.com"),
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 4),
                  child: Card(
                    elevation: 15.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    color: Colors.red,
                    child: ListTile(
                      leading: Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      title: Text(
                        "You can click the button for comminication with me",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "Raleway-Black",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(
        url: "https://gadgets.ndtv.com/",
        androidToolbarColor: Colors.deepPurple);
  }
}
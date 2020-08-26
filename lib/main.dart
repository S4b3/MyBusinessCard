import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
      MiCardApp()
  );
}
class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black87,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  foregroundColor: Colors.transparent,
                  //backgroundColor: Colors.white70,
                  backgroundImage: AssetImage("images/io.png"),
                ),
                Text(
                  'Valentino Sacco',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Yellowtail",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'YOUR NEXT SENPAI',
                  style: TextStyle(
                    color: Colors.teal.shade200,
                    fontSize: 20,
                    fontFamily: "Cute",
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    _openLink(0);
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.stay_current_portrait,
                          //color: Colors.teal.shade900,
                        ),
                        title: Text(
                          "+39 380 7536881",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: "SourceSans",
                            fontSize: 20,
                          ),
                        )
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _openLink(1);
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(
                            Icons.mail,
                            //color: Colors.teal.shade900,
                          ),
                          title: Text(
                            "vale.ino97@gmail.com",
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: "SourceSans",
                              fontSize: 20,
                            ),
                          ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {_openLink(2);},
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading: Icon(
                            Icons.camera_alt,
                            //color: Colors.teal.shade900,
                          ),
                          title: Text(
                            "@pinogradabile",
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: "SourceSans",
                                fontSize: 20,
                                letterSpacing: 1
                            ),
                          ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onLongPress: () {
                    showCupertinoDialog(context: context, builder: (context){
                      return CupertinoAlertDialog(
                        title: Text("U cute <3"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("Thenks"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
                  },
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          title: Text(
                            "You",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: "SourceSans",
                                fontSize: 20,
                            ),
                          ),
                        trailing:  Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Text(
                  "N.B.: Una frequentazione prolungata può causare perdite di LP ed evidenti cali di sanità mentale",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontFamily: "SourceSans",
                    fontStyle: FontStyle.italic,
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_openLink(input) async {
  String output;
  switch(input){
    case(0):
      output = "tel://+393807536881";
      break;
    case(1):
      output = "mailto:vale.ino97@gmail.com";
      break;
    case(2):
      output = "https://www.instagram.com/pinogradabile";
      break;
  }
  if (await canLaunch(output)) {
    await launch(output);
  } else {
    throw 'Could not launch $output';
  }
}


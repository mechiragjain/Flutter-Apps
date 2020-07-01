import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/chirag.jpg'),
              ),
              Text(
                'Chirag Jain',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'WEB DEVELOPER, FLUTTER DEVELOPER & MARKETING SPECIALIST',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[100],
                  )),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal[900],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text('+91 75975 50171',
                            style: TextStyle(
                              color: Colors.teal[900],
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                            ))
                      ],
                    ),
                  )),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal[900],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text('me.chiragjain@gmail.com',
                            style: TextStyle(
                              color: Colors.teal[900],
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                            ))
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

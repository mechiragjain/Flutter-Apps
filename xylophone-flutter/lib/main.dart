import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int trackNumber) {
    final player = AudioCache();
    player.play('note$trackNumber.wav');
  }

  Expanded buildKey({Color color, int keyNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keyNumber: 1),
              buildKey(color: Colors.orange, keyNumber: 2),
              buildKey(color: Colors.yellow, keyNumber: 3),
              buildKey(color: Colors.teal, keyNumber: 4),
              buildKey(color: Colors.blue, keyNumber: 5),
              buildKey(color: Colors.indigo, keyNumber: 6),
              buildKey(color: Colors.purple, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

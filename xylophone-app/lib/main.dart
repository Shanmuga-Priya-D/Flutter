import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buildKey({Color color, int soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
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
            buildKey(color: Colors.purple, soundNo: 1),
            buildKey(color: Colors.indigo, soundNo: 2),
            buildKey(color: Colors.blue, soundNo: 3),
            buildKey(color: Colors.green, soundNo: 4),
            buildKey(color: Colors.yellow, soundNo: 5),
            buildKey(color: Colors.orange, soundNo: 6),
            buildKey(color: Colors.red, soundNo: 7),
          ],
        )),
      ),
    );
  }
}

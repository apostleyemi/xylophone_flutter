import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(
      {required Color color,
      required int soundNumber,
      required String textValue}) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          AudioCache player = AudioCache();
          player = AudioCache();
          // call this method when desired
          player.play('audio/note$soundNumber.wav');
        },
        child: Text(textValue),
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
        ),
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
            children: [
              buildKey(color: Colors.red, soundNumber: 1, textValue: 'A'),
              buildKey(color: Colors.orange, soundNumber: 2, textValue: 'B'),
              buildKey(color: Colors.yellow, soundNumber: 3, textValue: 'C'),
              buildKey(
                  color: Colors.greenAccent, soundNumber: 4, textValue: 'D'),
              buildKey(color: Colors.green, soundNumber: 5, textValue: 'E'),
              buildKey(color: Colors.blue, soundNumber: 6, textValue: 'F'),
              buildKey(color: Colors.purple, soundNumber: 7, textValue: 'G'),
            ],
          ),
        ),
      ),
    );
  }
}

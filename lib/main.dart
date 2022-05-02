import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    AudioCache player = AudioCache();
    player = AudioCache();
    // call this method when desired
    player.play('audio/note$n.wav');
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
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // add it to your class as a static member

                    // or as a local variable
                    playSound(1);
                  },
                  child: Text('A'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // add it to your class as a static member

                    playSound(2);
                  },
                  child: Text('B'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text('C'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // or as a local variable
                    playSound(4);
                  },
                  child: Text('D'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // add it to your class as a static member
                    playSound(5);
                  },
                  child: Text('E'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // add it to your class as a static member
                    playSound(6);
                  },
                  child: Text('F'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text('G'),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

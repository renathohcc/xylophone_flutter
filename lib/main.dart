import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
//MaterialButton Widget
  Widget soundButton(int soundIndex, Color color, String chord) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundIndex.wav');
        },
        color: color,
        shape: RoundedRectangleBorder(),
        child: Text(
          chord,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(1, Colors.red, 'C'),
              soundButton(2, Colors.orange, 'D'),
              soundButton(3, Colors.yellow, 'E'),
              soundButton(4, Colors.green, 'F'),
              soundButton(5, Colors.teal, 'G'),
              soundButton(6, Colors.blue, 'A'),
              soundButton(7, Colors.purple, 'B'),
            ],
          ),
        ),
      ),
    );
  }
}

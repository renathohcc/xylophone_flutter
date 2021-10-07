import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                soundButton(1, Colors.red),
                soundButton(2, Colors.orange),
                soundButton(3, Colors.yellow),
                soundButton(4, Colors.green),
                soundButton(5, Colors.teal),
                soundButton(6, Colors.blue),
                soundButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//MaterialButton Widget
Widget soundButton(int soundIndex, Color color) {
  return MaterialButton(
    onPressed: () {
      final player = AudioCache();
      player.play('note$soundIndex.wav');
    },
    color: color,
  );
}

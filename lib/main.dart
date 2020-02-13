import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded putKeys({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$note.wav');
        },
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              putKeys(color: Colors.red, note: 1),
              putKeys(color: Colors.orange, note: 2),
              putKeys(color: Colors.yellow, note: 3),
              putKeys(color: Colors.green, note: 4),
              putKeys(color: Colors.teal, note: 5),
              putKeys(color: Colors.blue, note: 6),
              putKeys(color: Colors.deepPurple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Expanded playSet({Color clr, int fileName}) {
    return Expanded(
      child: FlatButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () {
            final Player = AudioCache();
            Player.play("note$fileName.wav");
          }
          , child: Container(
              color: clr,
         )
      ),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            playSet(clr: Colors.red, fileName: 1),
            playSet(clr: Colors.blueAccent, fileName: 2),
            playSet(clr: Colors.green, fileName: 3),
            playSet(clr: Colors.yellow, fileName: 4),
            playSet(clr: Colors.pink, fileName: 5),
            playSet(clr: Colors.teal, fileName: 6),
            playSet(clr: Colors.purple, fileName: 7)
          ],
        ),
      ),
    );//MaterialApp
  }
}


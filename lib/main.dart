import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void playSound(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }

  Expanded buildKey({required Color color,required int soundno}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundno);
        },
        child:Icon(Icons.music_note_outlined),
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
              buildKey(color: Colors.red,soundno:1),
              buildKey(color: Colors.green,soundno:2),
              buildKey(color: Colors.yellow,soundno:3),
              buildKey(color: Colors.blue,soundno:4),
              buildKey(color: Colors.orange,soundno:5),
              buildKey(color: Colors.teal,soundno:6),
              buildKey(color: Colors.purple,soundno:7),


            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main (){
  runApp(MaterialApp(
    title: 'Xylophone',
    home: Home(),
  ));
}


class Home extends StatelessWidget {

  void playSound(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int noteNumber}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(noteNumber);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red , noteNumber: 1),
                buildKey(color: Colors.orange , noteNumber: 2),
                buildKey(color: Colors.yellow , noteNumber: 3),
                buildKey(color: Colors.green , noteNumber: 4),
                buildKey(color: Colors.teal , noteNumber: 5),
                buildKey(color: Colors.blue , noteNumber: 6),
                buildKey(color: Colors.purple , noteNumber: 7),

              ],
            )
          ),

        ),
      ),
    );
  }
}

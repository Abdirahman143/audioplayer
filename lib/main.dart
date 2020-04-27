import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
  Audio()

);

class Audio extends StatelessWidget {
  void findSound(int numberOfSound)
  {
    final Player = AudioCache();
    Player.play('note$numberOfSound.wav');
  }
  Expanded buildKey({Color color , int numberOfSound })
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          findSound(numberOfSound);

        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          titleSpacing: 1.5,
          centerTitle: true,
          title: Text('Audio Player'),

        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.deepOrangeAccent,numberOfSound: 1),
              buildKey(color:Colors.blue, numberOfSound: 2),
              buildKey(color:Colors.green, numberOfSound: 3),
              buildKey(color:Colors.yellowAccent, numberOfSound: 4),
              buildKey(color:Colors.pink, numberOfSound: 5),
              buildKey(color:Colors.teal,numberOfSound: 6),
              buildKey(color: Colors.deepPurple, numberOfSound: 7),



            ],
          ),



        ),


        ),



    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color, int soundNumber, double width}){
    return Expanded(
      child: SizedBox(
        width: width,
        child: FlatButton(
          onPressed: (){
            playSound(soundNumber);
          },
          child: null,
          color: color,
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
          child:Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Tap any key and see what happens!',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              buildKey(color: Colors.red, soundNumber: 1,width: 380.0),
              buildKey(color: Colors.orange, soundNumber: 2,width: 350.0),
              buildKey(color: Colors.yellow, soundNumber: 3,width: 320.0),
              buildKey(color: Colors.green, soundNumber: 4,width: 290.0),
              buildKey(color: Colors.blue, soundNumber: 5,width: 260.0),
              buildKey(color: Colors.indigo, soundNumber: 6,width: 230.0),
              buildKey(color: Colors.deepPurple, soundNumber: 7,width: 200.0),
            ],
          ),
        ),
      ),
    );
  }
}

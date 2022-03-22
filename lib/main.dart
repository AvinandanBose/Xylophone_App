import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _State();
}

class _State extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    void playsound(int soundNumber){
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           Expanded(
             child: FlatButton(
               color: Colors.red,
              onPressed: () {
                playsound(1);
              },
               child: const Text(
                   'Note 1',
                 style: TextStyle(
                   color: Colors.black87,
                   fontWeight: FontWeight.bold,
                 ),
               ),
          ),
           ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playsound(2);
                },
                child: const Text(
                  'Note 2',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playsound(3);
                },
                child: const Text(
                  'Note 3',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  playsound(4);
                },
                child: const Text(
                  'Note 4',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playsound(5);
                },
                child: const Text(
                  'Note 5',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playsound(6);
                },
                child: const Text(
                  'Note 6',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playsound(7);
                },
                child: const Text(
                  'Note 7',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
      ],
        ),
      ),
    );
  }
}

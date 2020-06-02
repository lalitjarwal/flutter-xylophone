import 'dart:io';
import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    title: 'Xylophone',
    home: Xylophone(),
  ));
}

class Xylophone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(color: Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 30.0),
          ),
          centerTitle: true,
        ),
        body: Flex(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.red,
                    //margin: EdgeInsets.only(top: 25,left: 10 ),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(7);
                          });
                        },
                        child: null,
                      ),
                      width: 130,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.orange,
                   // margin: EdgeInsets.only(top: 25,left: 10 ),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(6);
                          });
                          },
                        child: null,
                      ),
                      width: 170,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.yellow,
                   // margin: EdgeInsets.only(top: 25,left: 10 ),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(5);
                          });
                        },
                        child: null,
                      ),
                      width: 210,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.green,
               //   margin: EdgeInsets.only(top: 25, left: 10),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(4);
                          });
                        },
                        child: null,
                      ),
                      width: 250,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.blue,
               //   margin: EdgeInsets.only(top: 25, left: 10),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(3);
                          });
                        },
                        child: null,
                      ),
                      width: 290,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.blue[900],
                  //  margin: EdgeInsets.only(top: 25,left: 10),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(2);
                          });
                        },
                        child: null,
                      ),
                      width: 330,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 20,
                    color: Colors.purple,
               //   margin: EdgeInsets.only(top: 25, left: 10),
                    child: SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            playsound(1);
                          });
                        },
                        child: null,
                      ),
                      width: 370,
                      height: 60,
                    ),
                  ),
                ),
              ], direction:Axis.vertical,
            ) ,
        );
  void playsound(int num) async{
    AudioCache audioCache = AudioCache();
    var dir=await getApplicationDocumentsDirectory();
    await audioCache.play('note$num.wav');
    debugPrint("Success");
  }
}

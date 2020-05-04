import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 1),
                firstChild: (
                    Image.network("https://media.discordapp.net/attachments/644741688400674826/706782171800535060/pixil-frame-3.png")
                ),
                secondChild: (
                    Image.network("https://cdn.discordapp.com/attachments/644741688400674826/706782178981183588/pixil-frame-2_1.png")
                ),
                crossFadeState: _showFirst ? CrossFadeState.showFirst: CrossFadeState.showSecond,
              ),
              RaisedButton(
                child: Text('CrossFade'),
                onPressed: () {
                  _showFirst = !_showFirst;
                  setState(() { });
                }
              )
              
            ]
        )) )); } }

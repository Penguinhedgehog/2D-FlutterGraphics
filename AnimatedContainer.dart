import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _color = Colors.blue[900];
  var _height = 200.0;
  var _width = 200.0;
  var counter = 0;
  var oSwitch = false;
  var _opacity = 1.0;
  String image = "https://media.discordapp.net/attachments/644741688400674826/706782171800535060/pixil-frame-3.png";
  void animate() {
    if (counter == 0) {
      image = "https://cdn.discordapp.com/attachments/644741688400674826/706782174115790978/pixil-frame-0_2.png";
      counter += 1;
    } else if (counter == 1) {
      image = "https://cdn.discordapp.com/attachments/644741688400674826/706782176305348649/pixil-frame-1_1.png";
      counter += 1;
    } else if (counter == 2){
      image = "https://cdn.discordapp.com/attachments/644741688400674826/706782178981183588/pixil-frame-2_1.png";
      counter += 1;
    } else {
      image = "https://cdn.discordapp.com/attachments/644741688400674826/706782176305348649/pixil-frame-1_1.png";
      counter = 0;
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _width,
                  height: _height,
                  color: _color,
                  child: Opacity(
                      opacity: _opacity,
                      child: Image.network(image),
                    ),
              ),
              RaisedButton(
                  child: Text('Animate'),
                  onPressed: () {
                    animate();
                    setState(() {});
                  }
              ),
              RaisedButton(
                child: Text('Change Box Color'),
                onPressed: () {
                  if (_color != Colors.red) {
                    _color = Colors.red;
                  } else {
                    _color = Colors.blue[900];
                  }
                  setState(() {});
                }
              ),
              RaisedButton(
                child: Text('Grow'),
                onPressed: () {
                  _width = _width + 25;
                  _height = _height + 25;
                  setState(() {});
                }
              ),
              RaisedButton(
                  child: Text('Shrink'),
                  onPressed: () {
                    _width = _width - 25;
                    _height = _height - 25;
                    setState(() {});
                  }
              ),
              RaisedButton(
                  child: Text('Fade'),
                  onPressed: () {
                    if (oSwitch == false) {
                      _opacity = _opacity - 0.1;
                      if(_opacity < 0.3) oSwitch = true;
                    } else {
                      _opacity = _opacity + 0.1;
                      if (_opacity == 1.0) oSwitch = false;
                    }
                    setState(() {});
                  }
              )
            ]
        )) )); } }

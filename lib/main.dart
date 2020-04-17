import 'package:flutter/material.dart';
import 'package:robocolapplunabotics/controlPad.dart';
import 'package:robocolapplunabotics/homescreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rover Interface',
      routes: <String, WidgetBuilder>{
        '/ControlPad': (BuildContext context) => new ControlPad(),
      },
      home: HomeScreen(),
    );
  }
}

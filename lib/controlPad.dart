import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ControlPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: Center(child: Text('hi')),
    );
  }
}

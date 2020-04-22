import 'package:control_pad/control_pad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:robocolapplunabotics/manual_wheel_button_widget.dart';
import 'package:robocolapplunabotics/rotate_buttons_widget.dart';
import 'package:robocolapplunabotics/auto_wheel_button_widget.dart';
import 'package:robocolapplunabotics/slider_widget.dart';

class ControlPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 10, 18, 1),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 100),
                    child: JoystickView(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  WheelManualButton(),
                  SizedBox(
                    height: 20,
                  ),
                  WheelAutoButton(),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RotatedBox(
                    quarterTurns: 3,
                    child: SliderActuadores(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 88),
                    child: ArrowsMovementButtons(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

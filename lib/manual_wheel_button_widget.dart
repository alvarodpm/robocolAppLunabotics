import 'package:flutter/material.dart';

class WheelManualButton extends StatefulWidget {
  _WheelManualButtonState state;
  @override
  _WheelManualButtonState createState() {
    state = _WheelManualButtonState();
    return state;
  }

  //Metodo para saber si el boton está accionado o no
  bool isOn() {
    return state.isOn();
  }
}

class _WheelManualButtonState extends State<WheelManualButton> {
  bool _buttonPressed = false;
  RaisedButton button = new RaisedButton(
    onPressed: () {},
    splashColor: Colors.greenAccent,
    color: Colors.blueGrey,
    child: new Icon(
      Icons.play_circle_filled,
      color: Colors.black,
      size: 25,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (details) {
        setState(() {
          _buttonPressed = true;
          button = new RaisedButton(
            onPressed: () {},
            splashColor: Colors.greenAccent,
            color: Colors.greenAccent,
            child: new Icon(
              Icons.play_circle_filled,
              color: Colors.black,
              size: 25,
            ),
          );
        });
      },
      onPointerUp: (details) {
        setState(() {
          _buttonPressed = false;
          button = new RaisedButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            color: Colors.blueGrey,
            child: new Icon(
              Icons.play_circle_filled,
              color: Colors.black,
              size: 25,
            ),
          );
        });
      },
      child: SizedBox(
        width: 51,
        height: 60,
        child: button,
      ),
    );
  }

  //Metodo para saber si el boton está accionado o no
  bool isOn() {
    return _buttonPressed;
  }
}

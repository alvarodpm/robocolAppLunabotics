import 'package:flutter/material.dart';

class WheelAutoButton extends StatefulWidget {
  _WheelAutoButtonState state;
  @override
  _WheelAutoButtonState createState() {
    state = _WheelAutoButtonState();
    return state;
  }

  //Metodo para saber si el boton está accionado o no
  bool isOn() {
    return state.isOn();
  }
}

class _WheelAutoButtonState extends State<WheelAutoButton> {
  List<bool> isSelected = [false];
  ToggleButtons button;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 70,
          child: button = ToggleButtons(
            selectedColor: Colors.greenAccent,
            fillColor: Colors.blueGrey,
            highlightColor: Colors.greenAccent,
            splashColor: Colors.greenAccent,
            borderColor: Colors.black,
            selectedBorderColor: Colors.greenAccent,
            disabledColor: Colors.blueGrey,
            borderWidth: 3,
            children: <Widget>[
              Icon(
                Icons.sync_problem,
                size: 30,
              ),
            ],
            isSelected: isSelected,
            onPressed: (int index) {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
          ),
        )
      ],
    );
  }

  //Metodo para saber si el boton está accionado o no
  bool isOn() {
    return button.isSelected[0];
  }
}

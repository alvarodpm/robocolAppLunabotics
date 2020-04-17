import 'package:flutter/material.dart';

class WheelAutoButton extends StatefulWidget{
  _WheelAutoButtonState state;
  @override
  _WheelAutoButtonState createState(){
    state = _WheelAutoButtonState();
    return state;
  }

  //Metodo para saber si el boton está accionado o no
  bool isOn(){
    return state.isOn();
}
}

class _WheelAutoButtonState extends State<WheelAutoButton>{

  List<bool> isSelected = [false];
  ToggleButtons button;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        button = ToggleButtons(
          selectedColor: Colors.greenAccent,
          fillColor: Colors.grey,
          highlightColor: Colors.greenAccent,
          splashColor: Colors.greenAccent,
          borderColor: Colors.black,
          selectedBorderColor: Colors.greenAccent,
          disabledColor: Colors.grey,
          borderWidth: 3,
          children: <Widget>[
            Icon(Icons.sync_problem)
          ],
          isSelected: isSelected,
          onPressed: (int index) {
            setState(() {
              isSelected[index] = !isSelected[index];
            });
          },
        )
      ],
    );
  }


  //Metodo para saber si el boton está accionado o no
  bool isOn(){
    return button.isSelected[0];
  }
}


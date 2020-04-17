import 'package:flutter/material.dart';

class ArrowsMovementButtons extends StatefulWidget {
  _ArrowsMovementButtons state;
  @override
  _ArrowsMovementButtons createState() {
    state = _ArrowsMovementButtons();
    return state;
  }

  //Metodo para saber si el boton derecho está accionado o no
  bool rightIsOn() {
    return state.rightIsOn();
  }

  //Metodo para saber si el boton izquierdo está accionado o no
  bool leftIsOn() {
    return state.leftIsOn();
  }
}

class _ArrowsMovementButtons extends State<ArrowsMovementButtons> {
  //Variable que indica si el botón derecho está presionado
  bool _rightButtonPressed = false;

  //Variable que indica si el botón izquierdo está presionado
  bool _leftButtonPressed = false;

  //Botón izquierdo
  RaisedButton leftButton = new RaisedButton(
    onPressed: () {},
    splashColor: Colors.transparent,
    color: Colors.blueGrey,
    child: new Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
  );

  //Botón derecho
  RaisedButton rightButton = new RaisedButton(
    onPressed: () {},
    splashColor: Colors.transparent,
    color: Colors.blueGrey,
    child: new Icon(
      Icons.arrow_forward_ios,
      color: Colors.black,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Listener del botón izquiero
        Listener(
            onPointerDown: (details) {
              setState(() {
                _leftButtonPressed = true;
                leftButton = new RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  color: Colors.greenAccent,
                  child: new Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                );
              });
            },
            onPointerUp: (details) {
              setState(() {
                _leftButtonPressed = false;
                leftButton = new RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  color: Colors.blueGrey,
                  child: new Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                );
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: leftButton,
            )),
        //Listener del botón derecho
        Listener(
            onPointerDown: (details) {
              setState(() {
                _rightButtonPressed = true;
                rightButton = new RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  color: Colors.greenAccent,
                  child: new Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                );
              });
            },
            onPointerUp: (details) {
              setState(() {
                _rightButtonPressed = false;
                rightButton = new RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  color: Colors.blueGrey,
                  child: new Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                );
              });
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 12), child: rightButton)),
      ],
    );
  }

  //Metodo para saber si el boton izquierdo está accionado o no
  bool leftIsOn() {
    return _leftButtonPressed;
  }

  //Metodo para saber si el boton derecho está accionado o no
  bool rightIsOn() {
    return _rightButtonPressed;
  }
}

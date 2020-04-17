import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Image.asset('assets/logoRobocol.jpg'),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.black,
                        splashColor: Colors.green,
                        child: Text(
                          'Conectarse al robot',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/ControlPad');
                        },
                      ),
                      MaterialButton(
                        color: Colors.black,
                        splashColor: Colors.green,
                        child: Text(
                          'Acerca del robot',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

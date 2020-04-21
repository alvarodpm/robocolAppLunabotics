import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robocolapplunabotics/webViewContainer.dart';

class HomeScreen extends StatelessWidget {
  String url =
      'https://github.com/alvarodpm/robocolAppLunabotics/blob/master/README.md#robocollunaboticsapp';
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
                        splashColor: Colors.yellowAccent,
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
                        splashColor: Colors.yellowAccent,
                        child: Text(
                          'Acerca de la interfaz',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          _handleURLButtonPress(context, url);
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}

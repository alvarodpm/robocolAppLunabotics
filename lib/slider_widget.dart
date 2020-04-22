import 'package:flutter/material.dart';

class SliderActuadores extends StatefulWidget {
  _SliderActuadoresState state;
  @override
  _SliderActuadoresState createState() {
    state = _SliderActuadoresState();
    return state;
  }

  double value() {
    return state.value();
  }
}

class _SliderActuadoresState extends State<SliderActuadores> {
  double _value = 0;
  void _setvalue(double value) => setState(() => _value = value);
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      onChanged: _setvalue,
      divisions: 100,
      label: (_value * 100).toInt().toString(),
    );
  }

  double value() {
    return _value;
  }
}

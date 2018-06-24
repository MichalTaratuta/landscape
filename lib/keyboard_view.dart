import 'package:flutter/material.dart';

const double _ROW_HEIGHT = 40.0;
const Color _KEY_BACKGROUND = const Color(0x33000000);

class KeyboardView extends StatelessWidget {
  KeyboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: _ROW_HEIGHT,
          color: _KEY_BACKGROUND,
        ),
        new Container(
          height: 1.0,
        ),
        new Container(
          height: _ROW_HEIGHT,
          color:  _KEY_BACKGROUND,
        ),
        new Container(
          height: 1.0,
        ),
        new Container(
          height: _ROW_HEIGHT,
          color: _KEY_BACKGROUND,
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'crossword_view.dart';
import 'clues_view.dart';
import 'keyboard_view.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  List<int> _gridElements;

  List<String> _acrossClues;

  List<String> _downClues;

  @override
  void initState() {
    super.initState();

    // This is a shortcut to specify data.
    // In practice, you should load this from a data repository.

    _gridElements = new List<int>();
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if (i + j == 6 || i + j == 3) {
          _gridElements.add(0);
        } else {
          _gridElements.add(1);
        }
      }
    }

    _acrossClues = new List<String>();
    _acrossClues.add('Hello');
    _acrossClues.add('Another one');
    _acrossClues.add('Cryptic');

    _downClues = new List<String>();
    _downClues.add('Yellow');
    _downClues.add('Brown');
    _downClues.add('Sweet');
    _downClues.add('However');
    _downClues.add('Tunnel');
    _downClues.add('Train');
    _downClues.add('On your desk');
    _downClues.add('Nursery');
    _downClues.add('On the loose');
    _downClues.add('Oliver Twist');
    _downClues.add('Last one');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Landscape Layout example"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    Orientation orientation = MediaQuery
    .of(context)
    .orientation;

    if (orientation == Orientation.portrait) {
      return new Column(
        children: <Widget>[
          new CrosswordView(gridElements: _gridElements),
          new Expanded(
            child: new CluesView(
                acrossClues: _acrossClues, downClues: _downClues),
          ),
          new KeyboardView(),
        ],
      );
    } else {
      return new Padding(
        padding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        child: new Row(
            children: <Widget>[
            new CrosswordView(gridElements: _gridElements),
              new Expanded(child: new Column(
                children: <Widget>[
                  new Expanded(
                    child: new CluesView(acrossClues: _acrossClues, downClues: _downClues),),
                  new KeyboardView(),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
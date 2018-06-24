import 'package:flutter/material.dart';

class CluesView extends StatelessWidget {
  CluesView({Key key, this.acrossClues, this.downClues}) : super(key: key);

  List<String> acrossClues;

  List<String> downClues;

  @override
  Widget build(BuildContext context) {
    Widget cluesRowTitle = new Row(
      children: <Widget>[
        new Expanded(
          child: new Text('Across',
          style: new TextStyle(fontWeight: FontWeight.bold),),
        )
        ,
        new Expanded(
          child: new Text('Down',
            style: new TextStyle(fontWeight: FontWeight.bold),),
        )
        ,
      ],
    );

    Widget acrossCluesWidget = new ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: acrossClues.map((String clue) {
          return new Text(clue);
        }).toList());

    Widget downCluesWidget = new ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: downClues.map((String clue) {
          return new Text(clue);
        }).toList());


    Widget cluesRow = new Row(children: <Widget>[
      new Expanded(
        child: acrossCluesWidget,
      )
      ,
      new Expanded(
        child: downCluesWidget,
      )
      ,
    ],
    );

    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Container(
            height: 28.0,
            child: cluesRowTitle,
          ),
          new Expanded(
            child: cluesRow,
          ),
        ],
      ),
    );
  }

}